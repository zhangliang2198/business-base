package com.zhen777.gaia.module.pay.controller.admin.refund;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import com.zhen777.gaia.module.pay.controller.admin.refund.vo.*;
import com.zhen777.gaia.module.pay.convert.refund.PayRefundConvert;
import com.zhen777.gaia.module.pay.dal.dataobject.merchant.PayAppDO;
import com.zhen777.gaia.module.pay.dal.dataobject.merchant.PayMerchantDO;
import com.zhen777.gaia.module.pay.dal.dataobject.order.PayOrderDO;
import com.zhen777.gaia.module.pay.dal.dataobject.refund.PayRefundDO;
import com.zhen777.gaia.module.pay.service.merchant.PayAppService;
import com.zhen777.gaia.module.pay.service.merchant.PayMerchantService;
import com.zhen777.gaia.module.pay.service.order.PayOrderService;
import com.zhen777.gaia.module.pay.service.refund.PayRefundService;
import com.zhen777.gaia.framework.common.pojo.CommonResult;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.common.util.collection.CollectionUtils;
import com.zhen777.gaia.framework.excel.core.util.ExcelUtils;
import com.zhen777.gaia.framework.operatelog.core.annotations.OperateLog;
import com.zhen777.gaia.framework.pay.core.enums.PayChannelEnum;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static com.zhen777.gaia.framework.common.pojo.CommonResult.success;
import static com.zhen777.gaia.framework.operatelog.core.enums.OperateTypeEnum.EXPORT;

@Tag(name = "???????????? - ????????????")
@RestController
@RequestMapping("/pay/refund")
@Validated
public class PayRefundController {

    @Resource
    private PayRefundService refundService;
    @Resource
    private PayMerchantService merchantService;
    @Resource
    private PayAppService appService;
    @Resource
    private PayOrderService orderService;

    @GetMapping("/get")
    @Operation(summary = "??????????????????")
    @Parameter(name = "id", description = "??????", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('pay:refund:query')")
    public CommonResult<PayRefundDetailsRespVO> getRefund(@RequestParam("id") Long id) {
        PayRefundDO refund = refundService.getRefund(id);
        if (ObjectUtil.isNull(refund)) {
            return success(new PayRefundDetailsRespVO());
        }

        PayMerchantDO merchantDO = merchantService.getMerchant(refund.getMerchantId());
        PayAppDO appDO = appService.getApp(refund.getAppId());
        PayChannelEnum channelEnum = PayChannelEnum.getByCode(refund.getChannelCode());
        PayOrderDO orderDO = orderService.getOrder(refund.getOrderId());

        PayRefundDetailsRespVO refundDetail = PayRefundConvert.INSTANCE.refundDetailConvert(refund);
        refundDetail.setMerchantName(ObjectUtil.isNotNull(merchantDO) ? merchantDO.getName() : "????????????");
        refundDetail.setAppName(ObjectUtil.isNotNull(appDO) ? appDO.getName() : "????????????");
        refundDetail.setChannelCodeName(ObjectUtil.isNotNull(channelEnum) ? channelEnum.getName() : "????????????");
        refundDetail.setSubject(orderDO.getSubject());

        return success(refundDetail);
    }

    @GetMapping("/page")
    @Operation(summary = "????????????????????????")
    @PreAuthorize("@ss.hasPermission('pay:refund:query')")
    public CommonResult<PageResult<PayRefundPageItemRespVO>> getRefundPage(@Valid PayRefundPageReqVO pageVO) {
        PageResult<PayRefundDO> pageResult = refundService.getRefundPage(pageVO);
        if (CollectionUtil.isEmpty(pageResult.getList())) {
            return success(new PageResult<>(pageResult.getTotal()));
        }

        // ????????????ID??????
        Map<Long, PayMerchantDO> merchantMap = merchantService.getMerchantMap(
                CollectionUtils.convertList(pageResult.getList(), PayRefundDO::getMerchantId));
        // ????????????ID??????
        Map<Long, PayAppDO> appMap = appService.getAppMap(
                CollectionUtils.convertList(pageResult.getList(), PayRefundDO::getAppId));
        List<PayRefundPageItemRespVO> list = new ArrayList<>(pageResult.getList().size());
        pageResult.getList().forEach(c -> {
            PayMerchantDO merchantDO = merchantMap.get(c.getMerchantId());
            PayAppDO appDO = appMap.get(c.getAppId());
            PayChannelEnum channelEnum = PayChannelEnum.getByCode(c.getChannelCode());

            PayRefundPageItemRespVO item = PayRefundConvert.INSTANCE.pageItemConvert(c);

            item.setMerchantName(ObjectUtil.isNotNull(merchantDO) ? merchantDO.getName() : "????????????");
            item.setAppName(ObjectUtil.isNotNull(appDO) ? appDO.getName() : "????????????");
            item.setChannelCodeName(ObjectUtil.isNotNull(channelEnum) ? channelEnum.getName() : "????????????");
            list.add(item);
        });

        return success(new PageResult<>(list, pageResult.getTotal()));
    }

    @GetMapping("/export-excel")
    @Operation(summary = "?????????????????? Excel")
    @PreAuthorize("@ss.hasPermission('pay:refund:export')")
    @OperateLog(type = EXPORT)
    public void exportRefundExcel(@Valid PayRefundExportReqVO exportReqVO,
            HttpServletResponse response) throws IOException {

        List<PayRefundDO> list = refundService.getRefundList(exportReqVO);
        if (CollectionUtil.isEmpty(list)) {
            ExcelUtils.write(response, "????????????.xls", "??????",
                    PayRefundExcelVO.class, new ArrayList<>());
        }

        // ????????????ID??????
        Map<Long, PayMerchantDO> merchantMap = merchantService.getMerchantMap(
                CollectionUtils.convertList(list, PayRefundDO::getMerchantId));
        // ????????????ID??????
        Map<Long, PayAppDO> appMap = appService.getAppMap(
                CollectionUtils.convertList(list, PayRefundDO::getAppId));

        List<PayRefundExcelVO> excelDatum = new ArrayList<>(list.size());
        // ????????????????????????
        Map<Long, PayOrderDO> orderMap = orderService.getOrderSubjectMap(
                CollectionUtils.convertList(list, PayRefundDO::getOrderId));

        list.forEach(c -> {
            PayMerchantDO merchantDO = merchantMap.get(c.getMerchantId());
            PayAppDO appDO = appMap.get(c.getAppId());
            PayChannelEnum channelEnum = PayChannelEnum.getByCode(c.getChannelCode());

            PayRefundExcelVO excelItem = PayRefundConvert.INSTANCE.excelConvert(c);
            excelItem.setMerchantName(ObjectUtil.isNotNull(merchantDO) ? merchantDO.getName() : "????????????");
            excelItem.setAppName(ObjectUtil.isNotNull(appDO) ? appDO.getName() : "????????????");
            excelItem.setChannelCodeName(ObjectUtil.isNotNull(channelEnum) ? channelEnum.getName() : "????????????");
            excelItem.setSubject(orderMap.get(c.getOrderId()).getSubject());

            excelDatum.add(excelItem);
        });

        // ?????? Excel
        ExcelUtils.write(response, "????????????.xls", "??????", PayRefundExcelVO.class, excelDatum);
    }

}
