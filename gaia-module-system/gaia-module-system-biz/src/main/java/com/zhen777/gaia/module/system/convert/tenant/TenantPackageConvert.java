package com.zhen777.gaia.module.system.convert.tenant;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.system.controller.admin.permission.vo.role.RoleSimpleRespVO;
import com.zhen777.gaia.module.system.controller.admin.tenant.vo.packages.TenantPackageCreateReqVO;
import com.zhen777.gaia.module.system.controller.admin.tenant.vo.packages.TenantPackageRespVO;
import com.zhen777.gaia.module.system.controller.admin.tenant.vo.packages.TenantPackageSimpleRespVO;
import com.zhen777.gaia.module.system.controller.admin.tenant.vo.packages.TenantPackageUpdateReqVO;
import com.zhen777.gaia.module.system.dal.dataobject.tenant.TenantPackageDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * 租户套餐 Convert
 *
 * @author 芋道源码
 */
@Mapper
public interface TenantPackageConvert {

    TenantPackageConvert INSTANCE = Mappers.getMapper(TenantPackageConvert.class);

    TenantPackageDO convert(TenantPackageCreateReqVO bean);

    TenantPackageDO convert(TenantPackageUpdateReqVO bean);

    TenantPackageRespVO convert(TenantPackageDO bean);

    List<TenantPackageRespVO> convertList(List<TenantPackageDO> list);

    PageResult<TenantPackageRespVO> convertPage(PageResult<TenantPackageDO> page);

    List<TenantPackageSimpleRespVO> convertList02(List<TenantPackageDO> list);

}
