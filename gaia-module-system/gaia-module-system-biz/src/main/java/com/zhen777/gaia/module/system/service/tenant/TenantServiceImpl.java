package com.zhen777.gaia.module.system.service.tenant;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.lang.Assert;
import cn.hutool.core.util.ObjectUtil;
import com.zhen777.gaia.framework.common.enums.CommonStatusEnum;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.common.util.collection.CollectionUtils;
import com.zhen777.gaia.framework.common.util.date.DateUtils;
import com.zhen777.gaia.framework.tenant.config.TenantProperties;
import com.zhen777.gaia.framework.tenant.core.context.TenantContextHolder;
import com.zhen777.gaia.framework.tenant.core.util.TenantUtils;
import com.zhen777.gaia.module.system.controller.admin.permission.vo.role.RoleCreateReqVO;
import com.zhen777.gaia.module.system.controller.admin.tenant.vo.tenant.TenantCreateReqVO;
import com.zhen777.gaia.module.system.controller.admin.tenant.vo.tenant.TenantExportReqVO;
import com.zhen777.gaia.module.system.controller.admin.tenant.vo.tenant.TenantPageReqVO;
import com.zhen777.gaia.module.system.controller.admin.tenant.vo.tenant.TenantUpdateReqVO;
import com.zhen777.gaia.module.system.convert.tenant.TenantConvert;
import com.zhen777.gaia.module.system.dal.dataobject.permission.MenuDO;
import com.zhen777.gaia.module.system.dal.dataobject.permission.RoleDO;
import com.zhen777.gaia.module.system.dal.dataobject.tenant.TenantDO;
import com.zhen777.gaia.module.system.dal.dataobject.tenant.TenantPackageDO;
import com.zhen777.gaia.module.system.dal.mysql.tenant.TenantMapper;
import com.zhen777.gaia.module.system.enums.permission.RoleCodeEnum;
import com.zhen777.gaia.module.system.enums.permission.RoleTypeEnum;
import com.zhen777.gaia.module.system.service.permission.MenuService;
import com.zhen777.gaia.module.system.service.permission.PermissionService;
import com.zhen777.gaia.module.system.service.permission.RoleService;
import com.zhen777.gaia.module.system.service.tenant.handler.TenantInfoHandler;
import com.zhen777.gaia.module.system.service.tenant.handler.TenantMenuHandler;
import com.zhen777.gaia.module.system.service.user.AdminUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import java.util.List;
import java.util.Objects;
import java.util.Set;

import static com.zhen777.gaia.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.zhen777.gaia.module.system.enums.ErrorCodeConstants.*;
import static java.util.Collections.singleton;

/**
 * ?????? Service ?????????
 *
 * @author ????????????
 */
@Service
@Validated
@Slf4j
public class TenantServiceImpl implements TenantService {

    @SuppressWarnings("SpringJavaAutowiredFieldsWarningInspection")
    @Autowired(required = false) // ?????? gaia.tenant.enable ??????????????????????????????????????????????????????????????????????????????
    private TenantProperties tenantProperties;

    @Resource
    private TenantMapper tenantMapper;

    @Resource
    private TenantPackageService tenantPackageService;
    @Resource
    @Lazy // ?????????????????????????????????
    private AdminUserService userService;
    @Resource
    private RoleService roleService;
    @Resource
    private MenuService menuService;
    @Resource
    private PermissionService permissionService;

    @Override
    public List<Long> getTenantIdList() {
        List<TenantDO> tenants = tenantMapper.selectList();
        return CollectionUtils.convertList(tenants, TenantDO::getId);
    }

    @Override
    public void validTenant(Long id) {
        TenantDO tenant = getTenant(id);
        if (tenant == null) {
            throw exception(TENANT_NOT_EXISTS);
        }
        if (tenant.getStatus().equals(CommonStatusEnum.DISABLE.getStatus())) {
            throw exception(TENANT_DISABLE, tenant.getName());
        }
        if (DateUtils.isExpired(tenant.getExpireTime())) {
            throw exception(TENANT_EXPIRE, tenant.getName());
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Long createTenant(TenantCreateReqVO createReqVO) {
        // ?????????????????????
        TenantPackageDO tenantPackage = tenantPackageService.validTenantPackage(createReqVO.getPackageId());

        // ????????????
        TenantDO tenant = TenantConvert.INSTANCE.convert(createReqVO);
        tenantMapper.insert(tenant);

        TenantUtils.execute(tenant.getId(), () -> {
            // ????????????
            Long roleId = createRole(tenantPackage);
            // ??????????????????????????????
            Long userId = createUser(roleId, createReqVO);
            // ????????????????????????
            tenantMapper.updateById(new TenantDO().setId(tenant.getId()).setContactUserId(userId));
        });
        return tenant.getId();
    }

    private Long createUser(Long roleId, TenantCreateReqVO createReqVO) {
        // ????????????
        Long userId = userService.createUser(TenantConvert.INSTANCE.convert02(createReqVO));
        // ????????????
        permissionService.assignUserRole(userId, singleton(roleId));
        return userId;
    }

    private Long createRole(TenantPackageDO tenantPackage) {
        // ????????????
        RoleCreateReqVO reqVO = new RoleCreateReqVO();
        reqVO.setName(RoleCodeEnum.TENANT_ADMIN.getName()).setCode(RoleCodeEnum.TENANT_ADMIN.getCode())
                .setSort(0).setRemark("??????????????????");
        Long roleId = roleService.createRole(reqVO, RoleTypeEnum.SYSTEM.getType());
        // ????????????
        permissionService.assignRoleMenu(roleId, tenantPackage.getMenuIds());
        return roleId;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateTenant(TenantUpdateReqVO updateReqVO) {
        // ????????????
        TenantDO tenant = validateUpdateTenant(updateReqVO.getId());
        // ?????????????????????
        TenantPackageDO tenantPackage = tenantPackageService.validTenantPackage(updateReqVO.getPackageId());

        // ????????????
        TenantDO updateObj = TenantConvert.INSTANCE.convert(updateReqVO);
        tenantMapper.updateById(updateObj);
        // ??????????????????????????????????????????????????????
        if (ObjectUtil.notEqual(tenant.getPackageId(), updateReqVO.getPackageId())) {
            updateTenantRoleMenu(tenant.getId(), tenantPackage.getMenuIds());
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateTenantRoleMenu(Long tenantId, Set<Long> menuIds) {
        TenantUtils.execute(tenantId, () -> {
            // ??????????????????
            List<RoleDO> roles = roleService.getRoleListByStatus(null);
            roles.forEach(role -> Assert.isTrue(tenantId.equals(role.getTenantId()), "??????({}/{}) ???????????????",
                    role.getId(), role.getTenantId(), tenantId)); // ????????????
            // ?????????????????????????????????
            roles.forEach(role -> {
                // ????????????????????????????????????????????????????????????????????????
                if (Objects.equals(role.getCode(), RoleCodeEnum.TENANT_ADMIN.getCode())) {
                    permissionService.assignRoleMenu(role.getId(), menuIds);
                    log.info("[updateTenantRoleMenu][???????????????({}/{}) ??????????????????({})]", role.getId(), role.getTenantId(), menuIds);
                    return;
                }
                // ??????????????????????????????????????????????????????
                Set<Long> roleMenuIds = permissionService.getRoleMenuIds(role.getId());
                roleMenuIds = CollUtil.intersectionDistinct(roleMenuIds, menuIds);
                permissionService.assignRoleMenu(role.getId(), roleMenuIds);
                log.info("[updateTenantRoleMenu][??????({}/{}) ??????????????????({})]", role.getId(), role.getTenantId(), roleMenuIds);
            });
        });
    }

    @Override
    public void deleteTenant(Long id) {
        // ????????????
        validateUpdateTenant(id);
        // ??????
        tenantMapper.deleteById(id);
    }

    private TenantDO validateUpdateTenant(Long id) {
        TenantDO tenant = tenantMapper.selectById(id);
        if (tenant == null) {
            throw exception(TENANT_NOT_EXISTS);
        }
        // ??????????????????????????????
        if (isSystemTenant(tenant)) {
            throw exception(TENANT_CAN_NOT_UPDATE_SYSTEM);
        }
        return tenant;
    }

    @Override
    public TenantDO getTenant(Long id) {
        return tenantMapper.selectById(id);
    }

    @Override
    public PageResult<TenantDO> getTenantPage(TenantPageReqVO pageReqVO) {
        return tenantMapper.selectPage(pageReqVO);
    }

    @Override
    public List<TenantDO> getTenantList(TenantExportReqVO exportReqVO) {
        return tenantMapper.selectList(exportReqVO);
    }

    @Override
    public TenantDO getTenantByName(String name) {
        return tenantMapper.selectByName(name);
    }

    @Override
    public Long getTenantCountByPackageId(Long packageId) {
        return tenantMapper.selectCountByPackageId(packageId);
    }

    @Override
    public List<TenantDO> getTenantListByPackageId(Long packageId) {
        return tenantMapper.selectListByPackageId(packageId);
    }

    @Override
    public void handleTenantInfo(TenantInfoHandler handler) {
        // ?????????????????????????????????
        if (isTenantDisable()) {
            return;
        }
        // ????????????
        TenantDO tenant = getTenant(TenantContextHolder.getRequiredTenantId());
        // ???????????????
        handler.handle(tenant);
    }

    @Override
    public void handleTenantMenu(TenantMenuHandler handler) {
        // ?????????????????????????????????
        if (isTenantDisable()) {
            return;
        }
        // ?????????????????????????????????
        TenantDO tenant = getTenant(TenantContextHolder.getRequiredTenantId());
        Set<Long> menuIds;
        if (isSystemTenant(tenant)) { // ?????????????????????????????????
            menuIds = CollectionUtils.convertSet(menuService.getMenuList(), MenuDO::getId);
        } else {
            menuIds = tenantPackageService.getTenantPackage(tenant.getPackageId()).getMenuIds();
        }
        // ???????????????
        handler.handle(menuIds);
    }

    private static boolean isSystemTenant(TenantDO tenant) {
        return Objects.equals(tenant.getPackageId(), TenantDO.PACKAGE_ID_SYSTEM);
    }

    private boolean isTenantDisable() {
        return tenantProperties == null || Boolean.FALSE.equals(tenantProperties.getEnable());
    }

}
