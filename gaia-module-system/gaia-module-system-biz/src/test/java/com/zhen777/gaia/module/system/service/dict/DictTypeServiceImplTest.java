package com.zhen777.gaia.module.system.service.dict;

import com.zhen777.gaia.framework.common.enums.CommonStatusEnum;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.common.util.collection.ArrayUtils;
import com.zhen777.gaia.framework.test.core.ut.BaseDbUnitTest;
import com.zhen777.gaia.module.system.controller.admin.dict.vo.type.DictTypeCreateReqVO;
import com.zhen777.gaia.module.system.controller.admin.dict.vo.type.DictTypeExportReqVO;
import com.zhen777.gaia.module.system.controller.admin.dict.vo.type.DictTypePageReqVO;
import com.zhen777.gaia.module.system.controller.admin.dict.vo.type.DictTypeUpdateReqVO;
import com.zhen777.gaia.module.system.dal.dataobject.dict.DictTypeDO;
import com.zhen777.gaia.module.system.dal.mysql.dict.DictTypeMapper;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;

import javax.annotation.Resource;
import java.util.List;
import java.util.function.Consumer;

import static cn.hutool.core.util.RandomUtil.randomEle;
import static com.zhen777.gaia.framework.common.util.date.LocalDateTimeUtils.buildBetweenTime;
import static com.zhen777.gaia.framework.common.util.date.LocalDateTimeUtils.buildTime;
import static com.zhen777.gaia.framework.common.util.object.ObjectUtils.cloneIgnoreId;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertPojoEquals;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertServiceException;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.*;
import static com.zhen777.gaia.module.system.enums.ErrorCodeConstants.*;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.when;

@Import(DictTypeServiceImpl.class)
public class DictTypeServiceImplTest extends BaseDbUnitTest {

    @Resource
    private DictTypeServiceImpl dictTypeService;

    @Resource
    private DictTypeMapper dictTypeMapper;
    @MockBean
    private DictDataService dictDataService;

    @Test
    public void testGetDictTypePage() {
       // mock ??????
       DictTypeDO dbDictType = randomPojo(DictTypeDO.class, o -> { // ???????????????
           o.setName("yunai");
           o.setType("??????");
           o.setStatus(CommonStatusEnum.ENABLE.getStatus());
           o.setCreateTime(buildTime(2021, 1, 15));
       });
       dictTypeMapper.insert(dbDictType);
       // ?????? name ?????????
       dictTypeMapper.insert(cloneIgnoreId(dbDictType, o -> o.setName("tudou")));
       // ?????? type ?????????
       dictTypeMapper.insert(cloneIgnoreId(dbDictType, o -> o.setType("??????")));
       // ?????? status ?????????
       dictTypeMapper.insert(cloneIgnoreId(dbDictType, o -> o.setStatus(CommonStatusEnum.DISABLE.getStatus())));
       // ?????? createTime ?????????
       dictTypeMapper.insert(cloneIgnoreId(dbDictType, o -> o.setCreateTime(buildTime(2021, 1, 1))));
       // ????????????
       DictTypePageReqVO reqVO = new DictTypePageReqVO();
       reqVO.setName("nai");
       reqVO.setType("???");
       reqVO.setStatus(CommonStatusEnum.ENABLE.getStatus());
       reqVO.setCreateTime(buildBetweenTime(2021, 1, 10, 2021, 1, 20));

       // ??????
       PageResult<DictTypeDO> pageResult = dictTypeService.getDictTypePage(reqVO);
       // ??????
       assertEquals(1, pageResult.getTotal());
       assertEquals(1, pageResult.getList().size());
       assertPojoEquals(dbDictType, pageResult.getList().get(0));
    }

    @Test
    public void testGetDictTypeList_export() {
        // mock ??????
        DictTypeDO dbDictType = randomPojo(DictTypeDO.class, o -> { // ???????????????
            o.setName("yunai");
            o.setType("??????");
            o.setStatus(CommonStatusEnum.ENABLE.getStatus());
            o.setCreateTime(buildTime(2021, 1, 15));
        });
        dictTypeMapper.insert(dbDictType);
        // ?????? name ?????????
        dictTypeMapper.insert(cloneIgnoreId(dbDictType, o -> o.setName("tudou")));
        // ?????? type ?????????
        dictTypeMapper.insert(cloneIgnoreId(dbDictType, o -> o.setType("??????")));
        // ?????? status ?????????
        dictTypeMapper.insert(cloneIgnoreId(dbDictType, o -> o.setStatus(CommonStatusEnum.DISABLE.getStatus())));
        // ?????? createTime ?????????
        dictTypeMapper.insert(cloneIgnoreId(dbDictType, o -> o.setCreateTime(buildTime(2021, 1, 1))));
        // ????????????
        DictTypeExportReqVO reqVO = new DictTypeExportReqVO();
        reqVO.setName("nai");
        reqVO.setType("???");
        reqVO.setStatus(CommonStatusEnum.ENABLE.getStatus());
        reqVO.setCreateTime(buildBetweenTime(2021, 1, 10, 2021, 1, 20));

        // ??????
        List<DictTypeDO> list = dictTypeService.getDictTypeList(reqVO);
        // ??????
        assertEquals(1, list.size());
        assertPojoEquals(dbDictType, list.get(0));
    }

    @Test
    public void testGetDictType_id() {
        // mock ??????
        DictTypeDO dbDictType = randomDictTypeDO();
        dictTypeMapper.insert(dbDictType);
        // ????????????
        Long id = dbDictType.getId();

        // ??????
        DictTypeDO dictType = dictTypeService.getDictType(id);
        // ??????
        assertNotNull(dictType);
        assertPojoEquals(dbDictType, dictType);
    }

    @Test
    public void testGetDictType_type() {
        // mock ??????
        DictTypeDO dbDictType = randomDictTypeDO();
        dictTypeMapper.insert(dbDictType);
        // ????????????
        String type = dbDictType.getType();

        // ??????
        DictTypeDO dictType = dictTypeService.getDictType(type);
        // ??????
        assertNotNull(dictType);
        assertPojoEquals(dbDictType, dictType);
    }

    @Test
    public void testCreateDictType_success() {
        // ????????????
        DictTypeCreateReqVO reqVO = randomPojo(DictTypeCreateReqVO.class,
                o -> o.setStatus(randomEle(CommonStatusEnum.values()).getStatus()));

        // ??????
        Long dictTypeId = dictTypeService.createDictType(reqVO);
        // ??????
        assertNotNull(dictTypeId);
        // ?????????????????????????????????
        DictTypeDO dictType = dictTypeMapper.selectById(dictTypeId);
        assertPojoEquals(reqVO, dictType);
    }

    @Test
    public void testUpdateDictType_success() {
        // mock ??????
        DictTypeDO dbDictType = randomDictTypeDO();
        dictTypeMapper.insert(dbDictType);// @Sql: ?????????????????????????????????
        // ????????????
        DictTypeUpdateReqVO reqVO = randomPojo(DictTypeUpdateReqVO.class, o -> {
            o.setId(dbDictType.getId()); // ??????????????? ID
            o.setStatus(randomEle(CommonStatusEnum.values()).getStatus());
        });

        // ??????
        dictTypeService.updateDictType(reqVO);
        // ????????????????????????
        DictTypeDO dictType = dictTypeMapper.selectById(reqVO.getId()); // ???????????????
        assertPojoEquals(reqVO, dictType);
    }

    @Test
    public void testDeleteDictType_success() {
        // mock ??????
        DictTypeDO dbDictType = randomDictTypeDO();
        dictTypeMapper.insert(dbDictType);// @Sql: ?????????????????????????????????
        // ????????????
        Long id = dbDictType.getId();

        // ??????
        dictTypeService.deleteDictType(id);
        // ????????????????????????
        assertNull(dictTypeMapper.selectById(id));
    }

    @Test
    public void testDeleteDictType_hasChildren() {
        // mock ??????
        DictTypeDO dbDictType = randomDictTypeDO();
        dictTypeMapper.insert(dbDictType);// @Sql: ?????????????????????????????????
        // ????????????
        Long id = dbDictType.getId();
        // mock ??????
        when(dictDataService.countByDictType(eq(dbDictType.getType()))).thenReturn(1L);

        // ??????, ???????????????
        assertServiceException(() -> dictTypeService.deleteDictType(id), DICT_TYPE_HAS_CHILDREN);
    }

    @Test
    public void testGetDictTypeList() {
        // ????????????
        DictTypeDO dictTypeDO01 = randomDictTypeDO();
        dictTypeMapper.insert(dictTypeDO01);
        DictTypeDO dictTypeDO02 = randomDictTypeDO();
        dictTypeMapper.insert(dictTypeDO02);
        // mock ??????

        // ??????
        List<DictTypeDO> dictTypeDOList = dictTypeService.getDictTypeList();
        // ??????
        assertEquals(2, dictTypeDOList.size());
        assertPojoEquals(dictTypeDO01, dictTypeDOList.get(0));
        assertPojoEquals(dictTypeDO02, dictTypeDOList.get(1));
    }

    @Test
    public void testValidateDictDataExists_success() {
        // mock ??????
        DictTypeDO dbDictType = randomDictTypeDO();
        dictTypeMapper.insert(dbDictType);// @Sql: ?????????????????????????????????

        // ????????????
        dictTypeService.validateDictTypeExists(dbDictType.getId());
    }

    @Test
    public void testValidateDictDataExists_notExists() {
        assertServiceException(() -> dictTypeService.validateDictTypeExists(randomLongId()), DICT_TYPE_NOT_EXISTS);
    }

    @Test
    public void testValidateDictTypeUnique_success() {
        // ???????????????
        dictTypeService.validateDictTypeUnique(randomLongId(), randomString());
    }

    @Test
    public void testValidateDictTypeUnique_valueDuplicateForCreate() {
        // ????????????
        String type = randomString();
        // mock ??????
        dictTypeMapper.insert(randomDictTypeDO(o -> o.setType(type)));

        // ?????????????????????
        assertServiceException(() -> dictTypeService.validateDictTypeUnique(null, type),
                DICT_TYPE_TYPE_DUPLICATE);
    }

    @Test
    public void testValidateDictTypeUnique_valueDuplicateForUpdate() {
        // ????????????
        Long id = randomLongId();
        String type = randomString();
        // mock ??????
        dictTypeMapper.insert(randomDictTypeDO(o -> o.setType(type)));

        // ?????????????????????
        assertServiceException(() -> dictTypeService.validateDictTypeUnique(id, type),
                DICT_TYPE_TYPE_DUPLICATE);
    }

    @Test
    public void testValidateDictTypNameUnique_success() {
        // ???????????????
        dictTypeService.validateDictTypeNameUnique(randomLongId(), randomString());
    }

    @Test
    public void testValidateDictTypeNameUnique_nameDuplicateForCreate() {
        // ????????????
        String name = randomString();
        // mock ??????
        dictTypeMapper.insert(randomDictTypeDO(o -> o.setName(name)));

        // ?????????????????????
        assertServiceException(() -> dictTypeService.validateDictTypeNameUnique(null, name),
                DICT_TYPE_NAME_DUPLICATE);
    }

    @Test
    public void testValidateDictTypeNameUnique_nameDuplicateForUpdate() {
        // ????????????
        Long id = randomLongId();
        String name = randomString();
        // mock ??????
        dictTypeMapper.insert(randomDictTypeDO(o -> o.setName(name)));

        // ?????????????????????
        assertServiceException(() -> dictTypeService.validateDictTypeNameUnique(id, name),
                DICT_TYPE_NAME_DUPLICATE);
    }

    // ========== ???????????? ==========

    @SafeVarargs
    private static DictTypeDO randomDictTypeDO(Consumer<DictTypeDO>... consumers) {
        Consumer<DictTypeDO> consumer = (o) -> {
            o.setStatus(randomEle(CommonStatusEnum.values()).getStatus()); // ?????? status ?????????
        };
        return randomPojo(DictTypeDO.class, ArrayUtils.append(consumer, consumers));
    }

}
