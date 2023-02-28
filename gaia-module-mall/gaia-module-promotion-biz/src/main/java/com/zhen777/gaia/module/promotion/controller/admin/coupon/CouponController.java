package com.zhen777.gaia.module.promotion.controller.admin.coupon;

import cn.hutool.core.collection.CollUtil;
import com.zhen777.gaia.framework.common.pojo.CommonResult;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.common.util.collection.MapUtils;
import com.zhen777.gaia.module.member.api.user.MemberUserApi;
import com.zhen777.gaia.module.member.api.user.dto.MemberUserRespDTO;
import com.zhen777.gaia.module.promotion.controller.admin.coupon.vo.coupon.CouponPageItemRespVO;
import com.zhen777.gaia.module.promotion.controller.admin.coupon.vo.coupon.CouponPageReqVO;
import com.zhen777.gaia.module.promotion.convert.coupon.CouponConvert;
import com.zhen777.gaia.module.promotion.dal.dataobject.coupon.CouponDO;
import com.zhen777.gaia.module.promotion.service.coupon.CouponService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.Map;
import java.util.Set;

import static com.zhen777.gaia.framework.common.pojo.CommonResult.success;
import static com.zhen777.gaia.framework.common.util.collection.CollectionUtils.convertSet;

@Tag(name = "管理后台 - 优惠劵")
@RestController
@RequestMapping("/promotion/coupon")
@Validated
public class CouponController {

    @Resource
    private CouponService couponService;
    @Resource
    private MemberUserApi memberUserApi;

//    @GetMapping("/get")
//    @Operation(summary = "获得优惠劵")
//    @Parameter(name = "id", description = "编号", required = true, example = "1024")
//    @PreAuthorize("@ss.hasPermission('promotion:coupon:query')")
//    public CommonResult<CouponRespVO> getCoupon(@RequestParam("id") Long id) {
//        CouponDO coupon = couponService.getCoupon(id);
//        return success(CouponConvert.INSTANCE.convert(coupon));
//    }

    @DeleteMapping("/delete")
    @Operation(summary = "回收优惠劵")
    @Parameter(name = "id", description = "编号", required = true)
    @PreAuthorize("@ss.hasPermission('promotion:coupon:delete')")
    public CommonResult<Boolean> deleteCoupon(@RequestParam("id") Long id) {
        couponService.deleteCoupon(id);
        return success(true);
    }

    @GetMapping("/page")
    @Operation(summary = "获得优惠劵分页")
    @PreAuthorize("@ss.hasPermission('promotion:coupon:query')")
    public CommonResult<PageResult<CouponPageItemRespVO>> getCouponPage(@Valid CouponPageReqVO pageVO) {
        PageResult<CouponDO> pageResult = couponService.getCouponPage(pageVO);
        PageResult<CouponPageItemRespVO> pageResulVO = CouponConvert.INSTANCE.convertPage(pageResult);
        if (CollUtil.isEmpty(pageResulVO.getList())) {
            return success(pageResulVO);
        }
        // 读取用户信息，进行拼接
        Set<Long> userIds = convertSet(pageResult.getList(), CouponDO::getUserId);
        Map<Long, MemberUserRespDTO> userMap = memberUserApi.getUserMap(userIds);
        pageResulVO.getList().forEach(itemRespVO -> MapUtils.findAndThen(userMap, itemRespVO.getUserId(),
                userRespDTO -> itemRespVO.setNickname(userRespDTO.getNickname())));
        return success(pageResulVO);
    }

}
