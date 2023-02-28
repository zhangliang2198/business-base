package com.zhen777.gaia.module.promotion.convert.coupon;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.promotion.controller.admin.coupon.vo.coupon.CouponPageItemRespVO;
import com.zhen777.gaia.module.promotion.dal.dataobject.coupon.CouponDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * 优惠劵 Convert
 *
 * @author 芋道源码
 */
@Mapper
public interface CouponConvert {

    CouponConvert INSTANCE = Mappers.getMapper(CouponConvert.class);

    PageResult<CouponPageItemRespVO> convertPage(PageResult<CouponDO> page);

}
