package com.zhen777.gaia.module.system.service.dict;

import com.zhen777.gaia.framework.common.enums.CommonStatusEnum;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.common.util.collection.ArrayUtils;
import com.zhen777.gaia.framework.test.core.ut.BaseDbUnitTest;
import com.zhen777.gaia.module.system.controller.admin.dict.vo.data.DictDataCreateReqVO;
import com.zhen777.gaia.module.system.controller.admin.dict.vo.data.DictDataExportReqVO;
import com.zhen777.gaia.module.system.controller.admin.dict.vo.data.DictDataPageReqVO;
import com.zhen777.gaia.module.system.controller.admin.dict.vo.data.DictDataUpdateReqVO;
import com.zhen777.gaia.module.system.dal.dataobject.dict.DictDataDO;
import com.zhen777.gaia.module.system.dal.dataobject.dict.DictTypeDO;
import com.zhen777.gaia.module.system.dal.mysql.dict.DictDataMapper;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;

import javax.annotation.Resource;
import java.util.List;
import java.util.function.Consumer;

import static com.zhen777.gaia.framework.common.util.object.ObjectUtils.cloneIgnoreId;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertPojoEquals;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertServiceException;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.*;
import static com.zhen777.gaia.module.system.enums.ErrorCodeConstants.*;
import static java.util.Collections.singletonList;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.when;

@Import(DictDataServiceImpl.class)
public class DictDataServiceImplTest extends BaseDbUnitTest {

    @Resource
    private DictDataServiceImpl dictDataService;

    @Resource
    private DictDataMapper dictDataMapper;
    @MockBean
    private DictTypeService dictTypeService;

    @Test
    public void testGetDictDataList() {
        // mock ??????
        DictDataDO dictDataDO01 = randomDictDataDO().setDictType("yunai").setSort(2);
        dictDataMapper.insert(dictDataDO01);
        DictDataDO dictDataDO02 = randomDictDataDO().setDictType("yunai").setSort(1);
        dictDataMapper.insert(dictDataDO02);
        // ????????????

        // ??????
        List<DictDataDO> dictDataDOList = dictDataService.getDictDataList();
        // ??????
        assertEquals(2, dictDataDOList.size());
        assertPojoEquals(dictDataDO02, dictDataDOList.get(0));
        assertPojoEquals(dictDataDO01, dictDataDOList.get(1));
    }

    @Test
    public void testGetDictDataPage() {
        // mock ??????
        DictDataDO dbDictData = randomPojo(DictDataDO.class, o -> { // ???????????????
            o.setLabel("??????");
            o.setDictType("yunai");
            o.setStatus(CommonStatusEnum.ENABLE.getStatus());
        });
        dictDataMapper.insert(dbDictData);
        // ?????? label ?????????
        dictDataMapper.insert(cloneIgnoreId(dbDictData, o -> o.setLabel("???")));
        // ?????? dictType ?????????
        dictDataMapper.insert(cloneIgnoreId(dbDictData, o -> o.setDictType("nai")));
        // ?????? status ?????????
        dictDataMapper.insert(cloneIgnoreId(dbDictData, o -> o.setStatus(CommonStatusEnum.DISABLE.getStatus())));
        // ????????????
        DictDataPageReqVO reqVO = new DictDataPageReqVO();
        reqVO.setLabel("???");
        reqVO.setDictType("yunai");
        reqVO.setStatus(CommonStatusEnum.ENABLE.getStatus());

        // ??????
        PageResult<DictDataDO> pageResult = dictDataService.getDictDataPage(reqVO);
        // ??????
        assertEquals(1, pageResult.getTotal());
        assertEquals(1, pageResult.getList().size());
        assertPojoEquals(dbDictData, pageResult.getList().get(0));
    }

    @Test
    public void testGetDictDataList_export() {
        // mock ??????
        DictDataDO dbDictData = randomPojo(DictDataDO.class, o -> { // ???????????????
            o.setLabel("??????");
            o.setDictType("yunai");
            o.setStatus(CommonStatusEnum.ENABLE.getStatus());
        });
        dictDataMapper.insert(dbDictData);
        // ?????? label ?????????
        dictDataMapper.insert(cloneIgnoreId(dbDictData, o -> o.setLabel("???")));
        // ?????? dictType ?????????
        dictDataMapper.insert(cloneIgnoreId(dbDictData, o -> o.setDictType("nai")));
        // ?????? status ?????????
        dictDataMapper.insert(cloneIgnoreId(dbDictData, o -> o.setStatus(CommonStatusEnum.DISABLE.getStatus())));
        // ????????????
        DictDataExportReqVO reqVO = new DictDataExportReqVO();
        reqVO.setLabel("???");
        reqVO.setDictType("yunai");
        reqVO.setStatus(CommonStatusEnum.ENABLE.getStatus());

        // ??????
        List<DictDataDO> list = dictDataService.getDictDataList(reqVO);
        // ??????
        assertEquals(1, list.size());
        assertPojoEquals(dbDictData, list.get(0));
    }

    @Test
    public void testGetDictData() {
        // mock ??????
        DictDataDO dbDictData = randomDictDataDO();
        dictDataMapper.insert(dbDictData);
        // ????????????
        Long id = dbDictData.getId();

        // ??????
        DictDataDO dictData = dictDataService.getDictData(id);
        // ??????
        assertPojoEquals(dbDictData, dictData);
    }

    @Test
    public void testCreateDictData_success() {
        // ????????????
        DictDataCreateReqVO reqVO = randomPojo(DictDataCreateReqVO.class,
                o -> o.setStatus(randomCommonStatus()));
        // mock ??????
        when(dictTypeService.getDictType(eq(reqVO.getDictType()))).thenReturn(randomDictTypeDO(reqVO.getDictType()));

        // ??????
        Long dictDataId = dictDataService.createDictData(reqVO);
        // ??????
        assertNotNull(dictDataId);
        // ?????????????????????????????????
        DictDataDO dictData = dictDataMapper.selectById(dictDataId);
        assertPojoEquals(reqVO, dictData);
    }

    @Test
    public void testUpdateDictData_success() {
        // mock ??????
        DictDataDO dbDictData = randomDictDataDO();
        dictDataMapper.insert(dbDictData);// @Sql: ?????????????????????????????????
        // ????????????
        DictDataUpdateReqVO reqVO = randomPojo(DictDataUpdateReqVO.class, o -> {
            o.setId(dbDictData.getId()); // ??????????????? ID
            o.setStatus(randomCommonStatus());
        });
        // mock ?????????????????????
        when(dictTypeService.getDictType(eq(reqVO.getDictType()))).thenReturn(randomDictTypeDO(reqVO.getDictType()));

        // ??????
        dictDataService.updateDictData(reqVO);
        // ????????????????????????
        DictDataDO dictData = dictDataMapper.selectById(reqVO.getId()); // ???????????????
        assertPojoEquals(reqVO, dictData);
    }

    @Test
    public void testDeleteDictData_success() {
        // mock ??????
        DictDataDO dbDictData = randomDictDataDO();
        dictDataMapper.insert(dbDictData);// @Sql: ?????????????????????????????????
        // ????????????
        Long id = dbDictData.getId();

        // ??????
        dictDataService.deleteDictData(id);
        // ????????????????????????
        assertNull(dictDataMapper.selectById(id));
    }

    @Test
    public void testValidateDictDataExists_success() {
        // mock ??????
        DictDataDO dbDictData = randomDictDataDO();
        dictDataMapper.insert(dbDictData);// @Sql: ?????????????????????????????????

        // ????????????
        dictDataService.validateDictDataExists(dbDictData.getId());
    }

    @Test
    public void testValidateDictDataExists_notExists() {
        assertServiceException(() -> dictDataService.validateDictDataExists(randomLongId()), DICT_DATA_NOT_EXISTS);
    }

    @Test
    public void testValidateDictTypeExists_success() {
        // mock ??????????????????????????????
        String type = randomString();
        when(dictTypeService.getDictType(eq(type))).thenReturn(randomDictTypeDO(type));

        // ??????, ??????
        dictDataService.validateDictTypeExists(type);
    }

    @Test
    public void testValidateDictTypeExists_notExists() {
        assertServiceException(() -> dictDataService.validateDictTypeExists(randomString()), DICT_TYPE_NOT_EXISTS);
    }

    @Test
    public void testValidateDictTypeExists_notEnable() {
        // mock ??????????????????????????????
        String dictType = randomString();
        when(dictTypeService.getDictType(eq(dictType))).thenReturn(
                randomPojo(DictTypeDO.class, o -> o.setStatus(CommonStatusEnum.DISABLE.getStatus())));

        // ??????, ???????????????
        assertServiceException(() -> dictDataService.validateDictTypeExists(dictType), DICT_TYPE_NOT_ENABLE);
    }

    @Test
    public void testValidateDictDataValueUnique_success() {
        // ???????????????
        dictDataService.validateDictDataValueUnique(randomLongId(), randomString(), randomString());
    }

    @Test
    public void testValidateDictDataValueUnique_valueDuplicateForCreate() {
        // ????????????
        String dictType = randomString();
        String value = randomString();
        // mock ??????
        dictDataMapper.insert(randomDictDataDO(o -> {
            o.setDictType(dictType);
            o.setValue(value);
        }));

        // ?????????????????????
        assertServiceException(() -> dictDataService.validateDictDataValueUnique(null, dictType, value),
                DICT_DATA_VALUE_DUPLICATE);
    }

    @Test
    public void testValidateDictDataValueUnique_valueDuplicateForUpdate() {
        // ????????????
        Long id = randomLongId();
        String dictType = randomString();
        String value = randomString();
        // mock ??????
        dictDataMapper.insert(randomDictDataDO(o -> {
            o.setDictType(dictType);
            o.setValue(value);
        }));

        // ?????????????????????
        assertServiceException(() -> dictDataService.validateDictDataValueUnique(id, dictType, value),
                DICT_DATA_VALUE_DUPLICATE);
    }

    @Test
    public void testCountByDictType() {
        // mock ??????
        dictDataMapper.insert(randomDictDataDO(o -> o.setDictType("yunai")));
        dictDataMapper.insert(randomDictDataDO(o -> o.setDictType("tudou")));
        dictDataMapper.insert(randomDictDataDO(o -> o.setDictType("yunai")));
        // ????????????
        String dictType = "yunai";

        // ??????
        long count = dictDataService.countByDictType(dictType);
        // ??????
        assertEquals(2L, count);
    }

    @Test
    public void testValidateDictDataList_success() {
        // mock ??????
        DictDataDO dictDataDO = randomDictDataDO().setStatus(CommonStatusEnum.ENABLE.getStatus());
        dictDataMapper.insert(dictDataDO);
        // ????????????
        String dictType = dictDataDO.getDictType();
        List<String> values = singletonList(dictDataDO.getValue());

        // ?????????????????????
        dictDataService.validateDictDataList(dictType, values);
    }

    @Test
    public void testValidateDictDataList_notFound() {
        // ????????????
        String dictType = randomString();
        List<String> values = singletonList(randomString());

        // ??????, ???????????????
        assertServiceException(() -> dictDataService.validateDictDataList(dictType, values), DICT_DATA_NOT_EXISTS);
    }

    @Test
    public void testValidateDictDataList_notEnable() {
        // mock ??????
        DictDataDO dictDataDO = randomDictDataDO().setStatus(CommonStatusEnum.DISABLE.getStatus());
        dictDataMapper.insert(dictDataDO);
        // ????????????
        String dictType = dictDataDO.getDictType();
        List<String> values = singletonList(dictDataDO.getValue());

        // ??????, ???????????????
        assertServiceException(() -> dictDataService.validateDictDataList(dictType, values),
                DICT_DATA_NOT_ENABLE, dictDataDO.getLabel());
    }

    @Test
    public void testGetDictData_dictType() {
        // mock ??????
        DictDataDO dictDataDO = randomDictDataDO().setDictType("yunai").setValue("1");
        dictDataMapper.insert(dictDataDO);
        DictDataDO dictDataDO02 = randomDictDataDO().setDictType("yunai").setValue("2");
        dictDataMapper.insert(dictDataDO02);
        // ????????????
        String dictType = "yunai";
        String value = "1";

        // ??????
        DictDataDO dbDictData = dictDataService.getDictData(dictType, value);
        // ??????
        assertEquals(dictDataDO, dbDictData);
    }

    @Test
    public void testParseDictData() {
        // mock ??????
        DictDataDO dictDataDO = randomDictDataDO().setDictType("yunai").setLabel("1");
        dictDataMapper.insert(dictDataDO);
        DictDataDO dictDataDO02 = randomDictDataDO().setDictType("yunai").setLabel("2");
        dictDataMapper.insert(dictDataDO02);
        // ????????????
        String dictType = "yunai";
        String label = "1";

        // ??????
        DictDataDO dbDictData = dictDataService.parseDictData(dictType, label);
        // ??????
        assertEquals(dictDataDO, dbDictData);
    }

    // ========== ???????????? ==========

    @SafeVarargs
    private static DictDataDO randomDictDataDO(Consumer<DictDataDO>... consumers) {
        Consumer<DictDataDO> consumer = (o) -> {
            o.setStatus(randomCommonStatus()); // ?????? status ?????????
        };
        return randomPojo(DictDataDO.class, ArrayUtils.append(consumer, consumers));
    }

    /**
     * ?????????????????????????????????
     *
     * @param type ????????????
     * @return DictTypeDO ??????
     */
    private static DictTypeDO randomDictTypeDO(String type) {
        return randomPojo(DictTypeDO.class, o -> {
            o.setType(type);
            o.setStatus(CommonStatusEnum.ENABLE.getStatus()); // ?????? status ?????????
        });
    }

}
