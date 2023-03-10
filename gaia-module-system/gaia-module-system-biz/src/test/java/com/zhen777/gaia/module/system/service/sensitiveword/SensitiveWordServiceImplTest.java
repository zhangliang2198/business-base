package com.zhen777.gaia.module.system.service.sensitiveword;

import com.zhen777.gaia.framework.common.enums.CommonStatusEnum;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.common.util.collection.SetUtils;
import com.zhen777.gaia.framework.test.core.ut.BaseDbUnitTest;
import com.zhen777.gaia.module.system.controller.admin.sensitiveword.vo.SensitiveWordCreateReqVO;
import com.zhen777.gaia.module.system.controller.admin.sensitiveword.vo.SensitiveWordExportReqVO;
import com.zhen777.gaia.module.system.controller.admin.sensitiveword.vo.SensitiveWordPageReqVO;
import com.zhen777.gaia.module.system.controller.admin.sensitiveword.vo.SensitiveWordUpdateReqVO;
import com.zhen777.gaia.module.system.dal.dataobject.sensitiveword.SensitiveWordDO;
import com.zhen777.gaia.module.system.dal.mysql.sensitiveword.SensitiveWordMapper;
import com.zhen777.gaia.module.system.mq.producer.sensitiveword.SensitiveWordProducer;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

import static com.zhen777.gaia.framework.common.util.date.LocalDateTimeUtils.buildBetweenTime;
import static com.zhen777.gaia.framework.common.util.date.LocalDateTimeUtils.buildTime;
import static com.zhen777.gaia.framework.common.util.object.ObjectUtils.cloneIgnoreId;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertPojoEquals;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertServiceException;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.randomLongId;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.randomPojo;
import static com.zhen777.gaia.module.system.enums.ErrorCodeConstants.SENSITIVE_WORD_NOT_EXISTS;
import static java.util.Collections.singletonList;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.verify;

/**
 * {@link SensitiveWordServiceImpl} ??????????????????
 *
 * @author ????????????
 */
@Import(SensitiveWordServiceImpl.class)
public class SensitiveWordServiceImplTest extends BaseDbUnitTest {

    @Resource
    private SensitiveWordServiceImpl sensitiveWordService;

    @Resource
    private SensitiveWordMapper sensitiveWordMapper;

    @MockBean
    private SensitiveWordProducer sensitiveWordProducer;

    @Test
    public void testInitLocalCache() {
        SensitiveWordDO wordDO1 = randomPojo(SensitiveWordDO.class, o -> o.setName("??????")
                .setTags(singletonList("??????")).setStatus(CommonStatusEnum.ENABLE.getStatus()));
        sensitiveWordMapper.insert(wordDO1);
        SensitiveWordDO wordDO2 = randomPojo(SensitiveWordDO.class, o -> o.setName("??????")
                .setTags(singletonList("??????")).setStatus(CommonStatusEnum.ENABLE.getStatus()));
        sensitiveWordMapper.insert(wordDO2);

        // ??????
        sensitiveWordService.initLocalCache();
        // ?????? sensitiveWordTagsCache ??????
        assertEquals(SetUtils.asSet("??????", "??????"), sensitiveWordService.getSensitiveWordTagSet());
        // ?????? tagSensitiveWordTries ??????
        assertNotNull(sensitiveWordService.getDefaultSensitiveWordTrie());
        assertEquals(2, sensitiveWordService.getTagSensitiveWordTries().size());
        assertNotNull(sensitiveWordService.getTagSensitiveWordTries().get("??????"));
        assertNotNull(sensitiveWordService.getTagSensitiveWordTries().get("??????"));
    }

    @Test
    public void testCreateSensitiveWord_success() {
        // ????????????
        SensitiveWordCreateReqVO reqVO = randomPojo(SensitiveWordCreateReqVO.class);

        // ??????
        Long sensitiveWordId = sensitiveWordService.createSensitiveWord(reqVO);
        // ??????
        assertNotNull(sensitiveWordId);
        // ?????????????????????????????????
        SensitiveWordDO sensitiveWord = sensitiveWordMapper.selectById(sensitiveWordId);
        assertPojoEquals(reqVO, sensitiveWord);
        verify(sensitiveWordProducer).sendSensitiveWordRefreshMessage();
    }

    @Test
    public void testUpdateSensitiveWord_success() {
        // mock ??????
        SensitiveWordDO dbSensitiveWord = randomPojo(SensitiveWordDO.class);
        sensitiveWordMapper.insert(dbSensitiveWord);// @Sql: ?????????????????????????????????
        // ????????????
        SensitiveWordUpdateReqVO reqVO = randomPojo(SensitiveWordUpdateReqVO.class, o -> {
            o.setId(dbSensitiveWord.getId()); // ??????????????? ID
        });

        // ??????
        sensitiveWordService.updateSensitiveWord(reqVO);
        // ????????????????????????
        SensitiveWordDO sensitiveWord = sensitiveWordMapper.selectById(reqVO.getId()); // ???????????????
        assertPojoEquals(reqVO, sensitiveWord);
        verify(sensitiveWordProducer).sendSensitiveWordRefreshMessage();
    }

    @Test
    public void testUpdateSensitiveWord_notExists() {
        // ????????????
        SensitiveWordUpdateReqVO reqVO = randomPojo(SensitiveWordUpdateReqVO.class);

        // ??????, ???????????????
        assertServiceException(() -> sensitiveWordService.updateSensitiveWord(reqVO), SENSITIVE_WORD_NOT_EXISTS);
    }

    @Test
    public void testDeleteSensitiveWord_success() {
        // mock ??????
        SensitiveWordDO dbSensitiveWord = randomPojo(SensitiveWordDO.class);
        sensitiveWordMapper.insert(dbSensitiveWord);// @Sql: ?????????????????????????????????
        // ????????????
        Long id = dbSensitiveWord.getId();

        // ??????
        sensitiveWordService.deleteSensitiveWord(id);
        // ????????????????????????
        assertNull(sensitiveWordMapper.selectById(id));
        verify(sensitiveWordProducer).sendSensitiveWordRefreshMessage();
    }

    @Test
    public void testDeleteSensitiveWord_notExists() {
        // ????????????
        Long id = randomLongId();

        // ??????, ???????????????
        assertServiceException(() -> sensitiveWordService.deleteSensitiveWord(id), SENSITIVE_WORD_NOT_EXISTS);
    }

    @Test
    public void testGetSensitiveWord() {
        // mock ??????
        SensitiveWordDO sensitiveWord = randomPojo(SensitiveWordDO.class);
        sensitiveWordMapper.insert(sensitiveWord);
        // ????????????
        Long id = sensitiveWord.getId();

        // ??????
        SensitiveWordDO dbSensitiveWord = sensitiveWordService.getSensitiveWord(id);
        // ??????
        assertPojoEquals(sensitiveWord, dbSensitiveWord);
    }

    @Test
    public void testGetSensitiveWordList() {
        // mock ??????
        SensitiveWordDO sensitiveWord01 = randomPojo(SensitiveWordDO.class);
        sensitiveWordMapper.insert(sensitiveWord01);
        SensitiveWordDO sensitiveWord02 = randomPojo(SensitiveWordDO.class);
        sensitiveWordMapper.insert(sensitiveWord02);

        // ??????
        List<SensitiveWordDO> list = sensitiveWordService.getSensitiveWordList();
        // ??????
        assertEquals(2, list.size());
        assertEquals(sensitiveWord01, list.get(0));
        assertEquals(sensitiveWord02, list.get(1));
    }

    @Test
    public void testGetSensitiveWordPage() {
        // mock ??????
        SensitiveWordDO dbSensitiveWord = randomPojo(SensitiveWordDO.class, o -> { // ???????????????
            o.setName("??????");
            o.setTags(Arrays.asList("??????", "??????"));
            o.setStatus(CommonStatusEnum.ENABLE.getStatus());
            o.setCreateTime(buildTime(2022, 2, 8));
        });
        sensitiveWordMapper.insert(dbSensitiveWord);
        // ?????? name ?????????
        sensitiveWordMapper.insert(cloneIgnoreId(dbSensitiveWord, o -> o.setName("??????")));
        // ?????? tags ?????????
        sensitiveWordMapper.insert(cloneIgnoreId(dbSensitiveWord, o -> o.setTags(Arrays.asList("??????", "?????????"))));
        // ?????? createTime ?????????
        sensitiveWordMapper.insert(cloneIgnoreId(dbSensitiveWord, o -> o.setCreateTime(buildTime(2022, 2, 16))));
        // ????????????
        SensitiveWordPageReqVO reqVO = new SensitiveWordPageReqVO();
        reqVO.setName("???");
        reqVO.setTag("??????");
        reqVO.setStatus(CommonStatusEnum.ENABLE.getStatus());
        reqVO.setCreateTime(buildBetweenTime(2022, 2, 1, 2022, 2, 12));

        // ??????
        PageResult<SensitiveWordDO> pageResult = sensitiveWordService.getSensitiveWordPage(reqVO);
        // ??????
        assertEquals(1, pageResult.getTotal());
        assertEquals(1, pageResult.getList().size());
        assertPojoEquals(dbSensitiveWord, pageResult.getList().get(0));
    }

    @Test
    public void testGetSensitiveWordList_export() {
        // mock ??????
        SensitiveWordDO dbSensitiveWord = randomPojo(SensitiveWordDO.class, o -> { // ???????????????
            o.setName("??????");
            o.setTags(Arrays.asList("??????", "??????"));
            o.setStatus(CommonStatusEnum.ENABLE.getStatus());
            o.setCreateTime(buildTime(2022, 2, 8));
        });
        sensitiveWordMapper.insert(dbSensitiveWord);
        // ?????? name ?????????
        sensitiveWordMapper.insert(cloneIgnoreId(dbSensitiveWord, o -> o.setName("??????")));
        // ?????? tags ?????????
        sensitiveWordMapper.insert(cloneIgnoreId(dbSensitiveWord, o -> o.setTags(Arrays.asList("??????", "?????????"))));
        // ?????? createTime ?????????
        sensitiveWordMapper.insert(cloneIgnoreId(dbSensitiveWord, o -> o.setCreateTime(buildTime(2022, 2, 16))));
        // ????????????
        SensitiveWordExportReqVO reqVO = new SensitiveWordExportReqVO();
        reqVO.setName("???");
        reqVO.setTag("??????");
        reqVO.setStatus(CommonStatusEnum.ENABLE.getStatus());
        reqVO.setCreateTime(buildBetweenTime(2022, 2, 1, 2022, 2, 12));

        // ??????
        List<SensitiveWordDO> list = sensitiveWordService.getSensitiveWordList(reqVO);
        // ??????
        assertEquals(1, list.size());
        assertPojoEquals(dbSensitiveWord, list.get(0));
    }

    @Test
    public void testValidateText_noTag() {
        testInitLocalCache();
        // ????????????
        String text = "???????????????????????????";

        // ??????
        List<String> result = sensitiveWordService.validateText(text, null);
        // ??????
        assertEquals(Arrays.asList("??????", "??????"), result);
    }

    @Test
    public void testValidateText_hasTag() {
        testInitLocalCache();
        // ????????????
        String text = "???????????????????????????";

        // ??????
        List<String> result = sensitiveWordService.validateText(text, singletonList("??????"));
        // ??????
        assertEquals(singletonList("??????"), result);
    }

    @Test
    public void testIsTestValid_noTag() {
        testInitLocalCache();
        // ????????????
        String text = "???????????????????????????";

        // ???????????????
        assertFalse(sensitiveWordService.isTextValid(text, null));
    }

    @Test
    public void testIsTestValid_hasTag() {
        testInitLocalCache();
        // ????????????
        String text = "???????????????????????????";

        // ???????????????
        assertFalse(sensitiveWordService.isTextValid(text, singletonList("??????")));
    }

}
