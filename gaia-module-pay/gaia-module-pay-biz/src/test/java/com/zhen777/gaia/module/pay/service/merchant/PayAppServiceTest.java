package com.zhen777.gaia.module.pay.service.merchant;

import cn.hutool.core.util.RandomUtil;
import com.zhen777.gaia.framework.common.enums.CommonStatusEnum;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.test.core.ut.BaseDbUnitTest;
import com.zhen777.gaia.module.pay.controller.admin.merchant.vo.app.PayAppCreateReqVO;
import com.zhen777.gaia.module.pay.controller.admin.merchant.vo.app.PayAppExportReqVO;
import com.zhen777.gaia.module.pay.controller.admin.merchant.vo.app.PayAppPageReqVO;
import com.zhen777.gaia.module.pay.controller.admin.merchant.vo.app.PayAppUpdateReqVO;
import com.zhen777.gaia.module.pay.dal.dataobject.merchant.PayAppDO;
import com.zhen777.gaia.module.pay.dal.dataobject.merchant.PayMerchantDO;
import com.zhen777.gaia.module.pay.dal.mysql.merchant.PayAppMapper;
import com.zhen777.gaia.module.pay.dal.mysql.merchant.PayMerchantMapper;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;

import static com.zhen777.gaia.framework.common.util.date.LocalDateTimeUtils.buildTime;
import static com.zhen777.gaia.framework.common.util.object.ObjectUtils.cloneIgnoreId;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertPojoEquals;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertServiceException;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.randomLongId;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.randomPojo;
import static com.zhen777.gaia.module.pay.enums.ErrorCodeConstants.PAY_APP_NOT_FOUND;
import static org.junit.jupiter.api.Assertions.*;

@Import(PayAppServiceImpl.class)
public class PayAppServiceTest extends BaseDbUnitTest {

    @Resource
    private PayAppServiceImpl appService;

    @Resource
    private PayAppMapper appMapper;

    @MockBean(name = "payMerchantMapper")
    private PayMerchantMapper payMerchantMapper;

    @Test
    public void testCreateApp_success() {
        // ????????????
        PayAppCreateReqVO reqVO = randomPojo(PayAppCreateReqVO.class, o ->
                o.setStatus((RandomUtil.randomEle(CommonStatusEnum.values()).getStatus())));

        // ??????
        Long appId = appService.createApp(reqVO);
        // ??????
        assertNotNull(appId);
        // ?????????????????????????????????
        PayAppDO app = appMapper.selectById(appId);
        assertPojoEquals(reqVO, app);
    }

    @Test
    public void testUpdateApp_success() {
        // mock ??????
        PayAppDO dbApp = randomPojo(PayAppDO.class, o ->
                o.setStatus(CommonStatusEnum.DISABLE.getStatus()));
        appMapper.insert(dbApp);// @Sql: ?????????????????????????????????
        // ????????????
        PayAppUpdateReqVO reqVO = randomPojo(PayAppUpdateReqVO.class, o -> {
            o.setStatus(CommonStatusEnum.ENABLE.getStatus());
            o.setId(dbApp.getId()); // ??????????????? ID
        });

        // ??????
        appService.updateApp(reqVO);
        // ????????????????????????
        PayAppDO app = appMapper.selectById(reqVO.getId()); // ???????????????
        assertPojoEquals(reqVO, app);
    }

    @Test
    public void testUpdateApp_notExists() {
        // ????????????
        PayAppUpdateReqVO reqVO = randomPojo(PayAppUpdateReqVO.class, o ->
                o.setStatus((RandomUtil.randomEle(CommonStatusEnum.values()).getStatus())));
        // ??????, ???????????????
        assertServiceException(() -> appService.updateApp(reqVO), PAY_APP_NOT_FOUND);
    }

    @Test
    public void testDeleteApp_success() {
        // mock ??????
        PayAppDO dbApp = randomPojo(PayAppDO.class, o ->
                o.setStatus((RandomUtil.randomEle(CommonStatusEnum.values()).getStatus())));
        appMapper.insert(dbApp);// @Sql: ?????????????????????????????????
        // ????????????
        Long id = dbApp.getId();

        // ??????
        appService.deleteApp(id);
        // ????????????????????????
        assertNull(appMapper.selectById(id));
    }

    @Test
    public void testDeleteApp_notExists() {
        // ????????????
        Long id = randomLongId();

        // ??????, ???????????????
        assertServiceException(() -> appService.deleteApp(id), PAY_APP_NOT_FOUND);
    }

    @Test
    public void testGetAppPage() {
        Long merchantId = 1L;
        Long mismatchMerchantId = 2L;

        // mock ??????
        PayAppDO dbApp = randomPojo(PayAppDO.class, o -> { // ???????????????
            o.setName("?????????????????????");
            o.setStatus(CommonStatusEnum.ENABLE.getStatus());
            o.setRemark("?????????????????????");
            o.setPayNotifyUrl("https://www.hc.com");
            o.setRefundNotifyUrl("https://www.xm.com");
            o.setMerchantId(merchantId);
            o.setCreateTime(buildTime(2021,11,20));
        });

        // mock ??????
        PayMerchantDO dbMerchant = randomPojo(PayMerchantDO.class, o -> { // ???????????????
            o.setId(merchantId);
            o.setNo("M1008611");
            o.setName("??????????????????");
            o.setShortName("?????????");
            o.setStatus(CommonStatusEnum.ENABLE.getStatus());
            o.setRemark("??????????????????");
            o.setCreateTime(buildTime(2021,11,3));
        });

        Mockito.when(payMerchantMapper.getMerchantListByName(dbMerchant.getName()))
                .thenReturn(Collections.singletonList(dbMerchant));

        appMapper.insert(dbApp);
        // ?????? name ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setName("?????????????????????")));
        // ?????? status ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setStatus(CommonStatusEnum.DISABLE.getStatus())));
        // ?????? remark ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setRemark("?????????????????????")));
        // ?????? payNotifyUrl ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setPayNotifyUrl("xm.com")));
        // ?????? refundNotifyUrl ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setRefundNotifyUrl("hc.com")));
        // ?????? merchantId ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setMerchantId(mismatchMerchantId)));
        // ?????? createTime ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setCreateTime(buildTime(2021,12,21))));
        // ????????????
        PayAppPageReqVO reqVO = new PayAppPageReqVO();
        reqVO.setName("?????????????????????");
        reqVO.setStatus(CommonStatusEnum.ENABLE.getStatus());
        reqVO.setRemark("?????????????????????");
        reqVO.setPayNotifyUrl("https://www.hc.com");
        reqVO.setRefundNotifyUrl("https://www.xm.com");
        reqVO.setMerchantName(dbMerchant.getName());
        reqVO.setCreateTime((new LocalDateTime[]{buildTime(2021,11,19),buildTime(2021,11,21)}));

        // ??????
        PageResult<PayAppDO> pageResult = appService.getAppPage(reqVO);
        // ??????
        assertEquals(1, pageResult.getTotal());
        assertEquals(1, pageResult.getList().size());
        assertPojoEquals(dbApp, pageResult.getList().get(0));
    }

    @Test // TODO ????????? null ???????????????
    public void testGetAppList() {
        Long merchantId = 1L;
        Long mismatchMerchantId = 2L;

        // mock ??????
        PayAppDO dbApp = randomPojo(PayAppDO.class, o -> { // ???????????????
            o.setName("?????????????????????");
            o.setStatus(CommonStatusEnum.ENABLE.getStatus());
            o.setRemark("?????????????????????");
            o.setPayNotifyUrl("https://www.hc.com");
            o.setRefundNotifyUrl("https://www.xm.com");
            o.setMerchantId(merchantId);
            o.setCreateTime(buildTime(2021,11,20));
        });

        // mock ??????
        PayMerchantDO dbMerchant = randomPojo(PayMerchantDO.class, o -> { // ???????????????
            o.setId(merchantId);
            o.setNo("M1008611");
            o.setName("??????????????????");
            o.setShortName("?????????");
            o.setStatus(CommonStatusEnum.ENABLE.getStatus());
            o.setRemark("??????????????????");
            o.setCreateTime(buildTime(2021,11,3));
        });

        Mockito.when(payMerchantMapper.getMerchantListByName(dbMerchant.getName()))
                .thenReturn(Collections.singletonList(dbMerchant));

        appMapper.insert(dbApp);
        // ?????? name ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setName("?????????????????????")));
        // ?????? status ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setStatus(CommonStatusEnum.DISABLE.getStatus())));
        // ?????? remark ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setRemark("?????????????????????")));
        // ?????? payNotifyUrl ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setPayNotifyUrl("xm.com")));
        // ?????? refundNotifyUrl ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setRefundNotifyUrl("hc.com")));
        // ?????? merchantId ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setMerchantId(mismatchMerchantId)));
        // ?????? createTime ?????????
        appMapper.insert(cloneIgnoreId(dbApp, o -> o.setCreateTime(buildTime(2021,12,21))));
        // ????????????
        PayAppExportReqVO reqVO = new PayAppExportReqVO();
        reqVO.setName("?????????????????????");
        reqVO.setStatus(CommonStatusEnum.ENABLE.getStatus());
        reqVO.setRemark("?????????????????????");
        reqVO.setPayNotifyUrl("https://www.hc.com");
        reqVO.setRefundNotifyUrl("https://www.xm.com");
        reqVO.setMerchantName(dbMerchant.getName());
        reqVO.setCreateTime((new LocalDateTime[]{buildTime(2021,11,19),buildTime(2021,11,21)}));

        // ??????
        List<PayAppDO> list = appService.getAppList(reqVO);
        // ??????
        assertEquals(1, list.size());
        assertPojoEquals(dbApp, list.get(0));
    }

}
