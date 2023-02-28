package com.zhen777.gaia.module.promotion.convert.coupon;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.promotion.controller.admin.coupon.vo.template.CouponTemplateCreateReqVO;
import com.zhen777.gaia.module.promotion.controller.admin.coupon.vo.template.CouponTemplateRespVO;
import com.zhen777.gaia.module.promotion.controller.admin.coupon.vo.template.CouponTemplateUpdateReqVO;
import com.zhen777.gaia.module.promotion.dal.dataobject.coupon.CouponTemplateDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * 优惠劵模板 Convert
 *
 * @author 芋道源码
 */
@Mapper
public interface CouponTemplateConvert {

    CouponTemplateConvert INSTANCE = Mappers.getMapper(CouponTemplateConvert.class);

    CouponTemplateDO convert(CouponTemplateCreateReqVO bean);

    CouponTemplateDO convert(CouponTemplateUpdateReqVO bean);

    CouponTemplateRespVO convert(CouponTemplateDO bean);

    PageResult<CouponTemplateRespVO> convertPage(PageResult<CouponTemplateDO> page);

}
