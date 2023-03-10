package com.zhen777.gaia.module.trade.convert.aftersale;

import cn.hutool.core.collection.CollUtil;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.member.api.user.dto.MemberUserRespDTO;
import com.zhen777.gaia.module.pay.api.refund.dto.PayRefundCreateReqDTO;
import com.zhen777.gaia.module.product.api.property.dto.ProductPropertyValueDetailRespDTO;
import com.zhen777.gaia.module.trade.controller.admin.aftersale.vo.TradeAfterSaleRespPageItemVO;
import com.zhen777.gaia.module.trade.controller.admin.base.member.user.MemberUserRespVO;
import com.zhen777.gaia.module.trade.controller.admin.base.product.property.ProductPropertyValueDetailRespVO;
import com.zhen777.gaia.module.trade.controller.app.aftersale.vo.AppTradeAfterSaleCreateReqVO;
import com.zhen777.gaia.module.trade.dal.dataobject.aftersale.TradeAfterSaleDO;
import com.zhen777.gaia.module.trade.dal.dataobject.order.TradeOrderItemDO;
import com.zhen777.gaia.module.trade.framework.order.config.TradeOrderProperties;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

import java.util.*;
import java.util.stream.Collectors;

import static com.zhen777.gaia.framework.common.util.collection.CollectionUtils.convertMap;

@Mapper
public interface TradeAfterSaleConvert {

    TradeAfterSaleConvert INSTANCE = Mappers.getMapper(TradeAfterSaleConvert.class);

    @Mappings({
            @Mapping(target = "id", ignore = true),
            @Mapping(target = "createTime", ignore = true),
            @Mapping(target = "updateTime", ignore = true),
            @Mapping(target = "creator", ignore = true),
            @Mapping(target = "updater", ignore = true),
    })
    TradeAfterSaleDO convert(AppTradeAfterSaleCreateReqVO createReqVO, TradeOrderItemDO tradeOrderItem);

    @Mappings({
            @Mapping(source = "afterSale.orderId", target = "merchantOrderId"),
            @Mapping(source = "afterSale.applyReason", target = "reason"),
            @Mapping(source = "afterSale.refundPrice", target = "amount")
    })
    PayRefundCreateReqDTO convert(String userIp, TradeAfterSaleDO afterSale,
                                  TradeOrderProperties orderProperties);

    MemberUserRespVO convert(MemberUserRespDTO bean);

    PageResult<TradeAfterSaleRespPageItemVO> convertPage(PageResult<TradeAfterSaleDO> page);

    default PageResult<TradeAfterSaleRespPageItemVO> convertPage(PageResult<TradeAfterSaleDO> pageResult,
                                                                 Map<Long, MemberUserRespDTO> memberUsers, List<ProductPropertyValueDetailRespDTO> propertyValueDetails) {
        PageResult<TradeAfterSaleRespPageItemVO> pageVOResult = convertPage(pageResult);
        // ???????????? + ???????????????????????????
        Map<Long, ProductPropertyValueDetailRespDTO> propertyValueDetailMap = convertMap(propertyValueDetails, ProductPropertyValueDetailRespDTO::getValueId);
        for (int i = 0; i < pageResult.getList().size(); i++) {
            TradeAfterSaleRespPageItemVO afterSaleVO = pageVOResult.getList().get(i);
            TradeAfterSaleDO afterSaleDO = pageResult.getList().get(i);
            // ??????
            afterSaleVO.setUser(convert(memberUsers.get(afterSaleDO.getUserId())));
            // ????????????
            if (CollUtil.isNotEmpty(afterSaleDO.getProperties())) {
                afterSaleVO.setProperties(new ArrayList<>(afterSaleDO.getProperties().size()));
                // ???????????? properties???????????? TradeOrderPageItemRespVO.Item ???
                afterSaleDO.getProperties().forEach(property -> {
                    ProductPropertyValueDetailRespDTO propertyValueDetail = propertyValueDetailMap.get(property.getValueId());
                    if (propertyValueDetail == null) {
                        return;
                    }
                    afterSaleVO.getProperties().add(convert(propertyValueDetail));
                });
            }
        }
        return pageVOResult;
    }

    ProductPropertyValueDetailRespVO convert(ProductPropertyValueDetailRespDTO bean);

    default Set<Long> convertPropertyValueIds(List<TradeAfterSaleDO> list) {
        if (CollUtil.isEmpty(list)) {
            return new HashSet<>();
        }
        return list.stream().filter(item -> item.getProperties() != null)
                .flatMap(p -> p.getProperties().stream()) // ???????????? Property ??????
                .map(TradeOrderItemDO.Property::getValueId) // ????????? Property ?????????????????? propertyId?????????????????????
                .collect(Collectors.toSet());
    }

}
