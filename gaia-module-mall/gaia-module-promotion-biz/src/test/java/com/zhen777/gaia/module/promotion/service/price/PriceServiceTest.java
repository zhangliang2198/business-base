package com.zhen777.gaia.module.promotion.service.price;

import cn.hutool.core.map.MapUtil;
import com.zhen777.gaia.framework.common.exception.ServiceException;
import com.zhen777.gaia.framework.test.core.ut.BaseMockitoUnitTest;
import com.zhen777.gaia.module.product.api.sku.ProductSkuApi;
import com.zhen777.gaia.module.product.api.sku.dto.ProductSkuRespDTO;
import com.zhen777.gaia.module.promotion.api.price.dto.CouponMeetRespDTO;
import com.zhen777.gaia.module.promotion.api.price.dto.PriceCalculateReqDTO;
import com.zhen777.gaia.module.promotion.api.price.dto.PriceCalculateRespDTO;
import com.zhen777.gaia.module.promotion.dal.dataobject.coupon.CouponDO;
import com.zhen777.gaia.module.promotion.dal.dataobject.reward.RewardActivityDO;
import com.zhen777.gaia.module.promotion.enums.common.*;
import com.zhen777.gaia.module.promotion.enums.coupon.CouponStatusEnum;
import com.zhen777.gaia.module.promotion.service.coupon.CouponService;
import com.zhen777.gaia.module.promotion.service.discount.DiscountActivityService;
import com.zhen777.gaia.module.promotion.service.discount.bo.DiscountProductDetailBO;
import com.zhen777.gaia.module.promotion.service.reward.RewardActivityService;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static com.zhen777.gaia.framework.common.util.collection.SetUtils.asSet;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertPojoEquals;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.randomLongId;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.randomPojo;
import static com.zhen777.gaia.module.promotion.enums.ErrorCodeConstants.COUPON_VALID_TIME_NOT_NOW;
import static java.util.Arrays.asList;
import static java.util.Collections.singletonList;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.when;

/**
 * {@link PriceServiceImpl} ???????????????
 *
 * @author ????????????
 */
public class PriceServiceTest extends BaseMockitoUnitTest {

    @InjectMocks
    private PriceServiceImpl priceService;

    @Mock
    private DiscountActivityService discountService;
    @Mock
    private RewardActivityService rewardActivityService;
    @Mock
    private CouponService couponService;
    @Mock
    private ProductSkuApi productSkuApi;

    @Test
    public void testCalculatePrice_memberDiscount() {
        // ????????????
        // TODO ?????????userId = 1????????? 9 ?????????????????? mock
        PriceCalculateReqDTO calculateReqDTO = new PriceCalculateReqDTO().setUserId(1L)
                .setItems(singletonList(new PriceCalculateReqDTO.Item().setSkuId(10L).setCount(2)));
        // mock ??????(?????? SKU ??????)
        ProductSkuRespDTO productSku = randomPojo(ProductSkuRespDTO.class, o -> o.setId(10L).setPrice(100));
        when(productSkuApi.getSkuList(eq(asSet(10L)))).thenReturn(singletonList(productSku));

        // ??????
        PriceCalculateRespDTO priceCalculate = priceService.calculatePrice(calculateReqDTO);
        // ?????? Order ??????
        PriceCalculateRespDTO.Order order = priceCalculate.getOrder();
        assertEquals(order.getOriginalPrice(), 200);
        assertEquals(order.getOrderPrice(), 180);
        assertEquals(order.getDiscountPrice(), 0);
        assertEquals(order.getPointPrice(), 0);
        assertEquals(order.getDeliveryPrice(), 0);
        assertEquals(order.getPayPrice(), 180);
        assertNull(order.getCouponId());
        // ?????? OrderItem ??????
        assertEquals(order.getItems().size(), 1);
        PriceCalculateRespDTO.OrderItem orderItem = order.getItems().get(0);
        assertEquals(orderItem.getSkuId(), 10L);
        assertEquals(orderItem.getCount(), 2);
        assertEquals(orderItem.getOriginalPrice(), 200);
        assertEquals(orderItem.getOriginalUnitPrice(), 100);
        assertEquals(orderItem.getDiscountPrice(), 20);
        assertEquals(orderItem.getPayPrice(), 180);
        assertEquals(orderItem.getOrderPartPrice(), 0);
        assertEquals(orderItem.getOrderDividePrice(), 180);
        // ?????? Promotion ??????
        assertEquals(priceCalculate.getPromotions().size(), 1);
        PriceCalculateRespDTO.Promotion promotion = priceCalculate.getPromotions().get(0);
        assertNull(promotion.getId());
        assertEquals(promotion.getName(), "????????????");
        assertEquals(promotion.getType(), PromotionTypeEnum.MEMBER.getType());
        assertEquals(promotion.getLevel(), PromotionLevelEnum.SKU.getLevel());
        assertEquals(promotion.getOriginalPrice(), 200);
        assertEquals(promotion.getDiscountPrice(), 20);
        assertTrue(promotion.getMeet());
        assertEquals(promotion.getMeetTip(), "?????????????????? 0.20 ???");
        PriceCalculateRespDTO.PromotionItem promotionItem = promotion.getItems().get(0);
        assertEquals(promotion.getItems().size(), 1);
        assertEquals(promotionItem.getSkuId(), 10L);
        assertEquals(promotionItem.getOriginalPrice(), 200);
        assertEquals(promotionItem.getDiscountPrice(), 20);
    }

    @Test
    public void testCalculatePrice_discountActivity() {
        // ????????????
        PriceCalculateReqDTO calculateReqDTO = new PriceCalculateReqDTO().setUserId(randomLongId())
                .setItems(asList(new PriceCalculateReqDTO.Item().setSkuId(10L).setCount(2),
                        new PriceCalculateReqDTO.Item().setSkuId(20L).setCount(3)));
        // mock ??????(?????? SKU ??????)
        ProductSkuRespDTO productSku01 = randomPojo(ProductSkuRespDTO.class, o -> o.setId(10L).setPrice(100));
        ProductSkuRespDTO productSku02 = randomPojo(ProductSkuRespDTO.class, o -> o.setId(20L).setPrice(50));
        when(productSkuApi.getSkuList(eq(asSet(10L, 20L)))).thenReturn(asList(productSku01, productSku02));
        // mock ????????????????????? DiscountActivity ?????????
        DiscountProductDetailBO discountProduct01 = randomPojo(DiscountProductDetailBO.class, o -> o.setActivityId(1000L)
                .setActivityName("?????? 1000 ???").setSkuId(10L)
                .setDiscountType(PromotionDiscountTypeEnum.PRICE.getType()).setDiscountPrice(40));
        DiscountProductDetailBO discountProduct02 = randomPojo(DiscountProductDetailBO.class, o -> o.setActivityId(2000L)
                .setActivityName("?????? 2000 ???").setSkuId(20L)
                .setDiscountType(PromotionDiscountTypeEnum.PERCENT.getType()).setDiscountPercent(60));
        when(discountService.getMatchDiscountProducts(eq(asSet(10L, 20L)))).thenReturn(
                MapUtil.builder(10L, discountProduct01).put(20L, discountProduct02).map());

        // 10L: 100 * 2 - 40 * 2 = 120
        // 20L???50 * 3 - 50 * 3 * 0.4 = 90

        // ??????
        PriceCalculateRespDTO priceCalculate = priceService.calculatePrice(calculateReqDTO);
        // ?????? Order ??????
        PriceCalculateRespDTO.Order order = priceCalculate.getOrder();
        assertEquals(order.getOriginalPrice(), 350);
        assertEquals(order.getOrderPrice(), 210);
        assertEquals(order.getDiscountPrice(), 0);
        assertEquals(order.getPointPrice(), 0);
        assertEquals(order.getDeliveryPrice(), 0);
        assertEquals(order.getPayPrice(), 210);
        assertNull(order.getCouponId());
        // ?????? OrderItem ??????
        assertEquals(order.getItems().size(), 2);
        PriceCalculateRespDTO.OrderItem orderItem01 = order.getItems().get(0);
        assertEquals(orderItem01.getSkuId(), 10L);
        assertEquals(orderItem01.getCount(), 2);
        assertEquals(orderItem01.getOriginalPrice(), 200);
        assertEquals(orderItem01.getOriginalUnitPrice(), 100);
        assertEquals(orderItem01.getDiscountPrice(), 80);
        assertEquals(orderItem01.getPayPrice(), 120);
        assertEquals(orderItem01.getOrderPartPrice(), 0);
        assertEquals(orderItem01.getOrderDividePrice(), 120);
        PriceCalculateRespDTO.OrderItem orderItem02 = order.getItems().get(1);
        assertEquals(orderItem02.getSkuId(), 20L);
        assertEquals(orderItem02.getCount(), 3);
        assertEquals(orderItem02.getOriginalPrice(), 150);
        assertEquals(orderItem02.getOriginalUnitPrice(), 50);
        assertEquals(orderItem02.getDiscountPrice(), 60);
        assertEquals(orderItem02.getPayPrice(), 90);
        assertEquals(orderItem02.getOrderPartPrice(), 0);
        assertEquals(orderItem02.getOrderDividePrice(), 90);
        // ?????? Promotion ??????
        assertEquals(priceCalculate.getPromotions().size(), 2);
        PriceCalculateRespDTO.Promotion promotion01 = priceCalculate.getPromotions().get(0);
        assertEquals(promotion01.getId(), 1000L);
        assertEquals(promotion01.getName(), "?????? 1000 ???");
        assertEquals(promotion01.getType(), PromotionTypeEnum.DISCOUNT_ACTIVITY.getType());
        assertEquals(promotion01.getLevel(), PromotionLevelEnum.SKU.getLevel());
        assertEquals(promotion01.getOriginalPrice(), 200);
        assertEquals(promotion01.getDiscountPrice(), 80);
        assertTrue(promotion01.getMeet());
        assertEquals(promotion01.getMeetTip(), "?????????????????? 0.80 ???");
        PriceCalculateRespDTO.PromotionItem promotionItem01 = promotion01.getItems().get(0);
        assertEquals(promotion01.getItems().size(), 1);
        assertEquals(promotionItem01.getSkuId(), 10L);
        assertEquals(promotionItem01.getOriginalPrice(), 200);
        assertEquals(promotionItem01.getDiscountPrice(), 80);
        PriceCalculateRespDTO.Promotion promotion02 = priceCalculate.getPromotions().get(1);
        assertEquals(promotion02.getId(), 2000L);
        assertEquals(promotion02.getName(), "?????? 2000 ???");
        assertEquals(promotion02.getType(), PromotionTypeEnum.DISCOUNT_ACTIVITY.getType());
        assertEquals(promotion02.getLevel(), PromotionLevelEnum.SKU.getLevel());
        assertEquals(promotion02.getOriginalPrice(), 150);
        assertEquals(promotion02.getDiscountPrice(), 60);
        assertTrue(promotion02.getMeet());
        assertEquals(promotion02.getMeetTip(), "?????????????????? 0.60 ???");
        PriceCalculateRespDTO.PromotionItem promotionItem02 = promotion02.getItems().get(0);
        assertEquals(promotion02.getItems().size(), 1);
        assertEquals(promotionItem02.getSkuId(), 20L);
        assertEquals(promotionItem02.getOriginalPrice(), 150);
        assertEquals(promotionItem02.getDiscountPrice(), 60);
    }

    /**
     * ???????????????????????????????????????
     */
    @Test
    public void testCalculatePrice_rewardActivity() {
        // ????????????
        PriceCalculateReqDTO calculateReqDTO = new PriceCalculateReqDTO().setUserId(randomLongId())
                .setItems(asList(new PriceCalculateReqDTO.Item().setSkuId(10L).setCount(2),
                        new PriceCalculateReqDTO.Item().setSkuId(20L).setCount(3),
                        new PriceCalculateReqDTO.Item().setSkuId(30L).setCount(4)));
        // mock ??????(?????? SKU ??????)
        ProductSkuRespDTO productSku01 = randomPojo(ProductSkuRespDTO.class, o -> o.setId(10L).setPrice(100).setSpuId(1L));
        ProductSkuRespDTO productSku02 = randomPojo(ProductSkuRespDTO.class, o -> o.setId(20L).setPrice(50).setSpuId(2L));
        ProductSkuRespDTO productSku03 = randomPojo(ProductSkuRespDTO.class, o -> o.setId(30L).setPrice(30).setSpuId(3L));
        when(productSkuApi.getSkuList(eq(asSet(10L, 20L, 30L)))).thenReturn(asList(productSku01, productSku02, productSku03));
        // mock ????????????????????? DiscountActivity ?????????
        RewardActivityDO rewardActivity01 = randomPojo(RewardActivityDO.class, o -> o.setId(1000L).setName("?????? 1000 ???")
                .setProductSpuIds(asList(10L, 20L)).setConditionType(PromotionConditionTypeEnum.PRICE.getType())
                .setRules(singletonList(new RewardActivityDO.Rule().setLimit(200).setDiscountPrice(70))));
        RewardActivityDO rewardActivity02 = randomPojo(RewardActivityDO.class, o -> o.setId(2000L).setName("?????? 2000 ???")
                .setProductSpuIds(singletonList(30L)).setConditionType(PromotionConditionTypeEnum.COUNT.getType())
                .setRules(asList(new RewardActivityDO.Rule().setLimit(1).setDiscountPrice(10),
                        new RewardActivityDO.Rule().setLimit(2).setDiscountPrice(60), // ??????????????????????????? 4 ???
                        new RewardActivityDO.Rule().setLimit(10).setDiscountPrice(100))));
        Map<RewardActivityDO, Set<Long>> matchRewardActivities = new LinkedHashMap<>();
        matchRewardActivities.put(rewardActivity01, asSet(1L, 2L));
        matchRewardActivities.put(rewardActivity02, asSet(3L));
        when(rewardActivityService.getMatchRewardActivities(eq(asSet(1L, 2L, 3L)))).thenReturn(matchRewardActivities);

        // ??????
        PriceCalculateRespDTO priceCalculate = priceService.calculatePrice(calculateReqDTO);
        // ?????? Order ??????
        PriceCalculateRespDTO.Order order = priceCalculate.getOrder();
        assertEquals(order.getOriginalPrice(), 470);
        assertEquals(order.getOrderPrice(), 470);
        assertEquals(order.getDiscountPrice(), 130);
        assertEquals(order.getPointPrice(), 0);
        assertEquals(order.getDeliveryPrice(), 0);
        assertEquals(order.getPayPrice(), 340);
        assertNull(order.getCouponId());
        // ?????? OrderItem ??????
        assertEquals(order.getItems().size(), 3);
        PriceCalculateRespDTO.OrderItem orderItem01 = order.getItems().get(0);
        assertEquals(orderItem01.getSkuId(), 10L);
        assertEquals(orderItem01.getCount(), 2);
        assertEquals(orderItem01.getOriginalPrice(), 200);
        assertEquals(orderItem01.getOriginalUnitPrice(), 100);
        assertEquals(orderItem01.getDiscountPrice(), 0);
        assertEquals(orderItem01.getPayPrice(), 200);
        assertEquals(orderItem01.getOrderPartPrice(), 40);
        assertEquals(orderItem01.getOrderDividePrice(), 160);
        PriceCalculateRespDTO.OrderItem orderItem02 = order.getItems().get(1);
        assertEquals(orderItem02.getSkuId(), 20L);
        assertEquals(orderItem02.getCount(), 3);
        assertEquals(orderItem02.getOriginalPrice(), 150);
        assertEquals(orderItem02.getOriginalUnitPrice(), 50);
        assertEquals(orderItem02.getDiscountPrice(), 0);
        assertEquals(orderItem02.getPayPrice(), 150);
        assertEquals(orderItem02.getOrderPartPrice(), 30);
        assertEquals(orderItem02.getOrderDividePrice(), 120);
        PriceCalculateRespDTO.OrderItem orderItem03 = order.getItems().get(2);
        assertEquals(orderItem03.getSkuId(), 30L);
        assertEquals(orderItem03.getCount(), 4);
        assertEquals(orderItem03.getOriginalPrice(), 120);
        assertEquals(orderItem03.getOriginalUnitPrice(), 30);
        assertEquals(orderItem03.getDiscountPrice(), 0);
        assertEquals(orderItem03.getPayPrice(), 120);
        assertEquals(orderItem03.getOrderPartPrice(), 60);
        assertEquals(orderItem03.getOrderDividePrice(), 60);
        // ?????? Promotion ?????????????????????
        assertEquals(priceCalculate.getPromotions().size(), 2);
        PriceCalculateRespDTO.Promotion promotion01 = priceCalculate.getPromotions().get(0);
        assertEquals(promotion01.getId(), 1000L);
        assertEquals(promotion01.getName(), "?????? 1000 ???");
        assertEquals(promotion01.getType(), PromotionTypeEnum.REWARD_ACTIVITY.getType());
        assertEquals(promotion01.getLevel(), PromotionLevelEnum.ORDER.getLevel());
        assertEquals(promotion01.getOriginalPrice(), 350);
        assertEquals(promotion01.getDiscountPrice(), 70);
        assertTrue(promotion01.getMeet());
        assertEquals(promotion01.getMeetTip(), "??????????????? 0.70 ???");
        assertEquals(promotion01.getItems().size(), 2);
        PriceCalculateRespDTO.PromotionItem promotionItem011 = promotion01.getItems().get(0);
        assertEquals(promotionItem011.getSkuId(), 10L);
        assertEquals(promotionItem011.getOriginalPrice(), 200);
        assertEquals(promotionItem011.getDiscountPrice(), 40);
        PriceCalculateRespDTO.PromotionItem promotionItem012 = promotion01.getItems().get(1);
        assertEquals(promotionItem012.getSkuId(), 20L);
        assertEquals(promotionItem012.getOriginalPrice(), 150);
        assertEquals(promotionItem012.getDiscountPrice(), 30);
        // ?????? Promotion ?????????????????????
        PriceCalculateRespDTO.Promotion promotion02 = priceCalculate.getPromotions().get(1);
        assertEquals(promotion02.getId(), 2000L);
        assertEquals(promotion02.getName(), "?????? 2000 ???");
        assertEquals(promotion02.getType(), PromotionTypeEnum.REWARD_ACTIVITY.getType());
        assertEquals(promotion02.getLevel(), PromotionLevelEnum.ORDER.getLevel());
        assertEquals(promotion02.getOriginalPrice(), 120);
        assertEquals(promotion02.getDiscountPrice(), 60);
        assertTrue(promotion02.getMeet());
        assertEquals(promotion02.getMeetTip(), "??????????????? 0.60 ???");
        PriceCalculateRespDTO.PromotionItem promotionItem02 = promotion02.getItems().get(0);
        assertEquals(promotion02.getItems().size(), 1);
        assertEquals(promotionItem02.getSkuId(), 30L);
        assertEquals(promotionItem02.getOriginalPrice(), 120);
        assertEquals(promotionItem02.getDiscountPrice(), 60);
    }

    /**
     * ??????????????????????????????????????????
     */
    @Test
    public void testCalculatePrice_rewardActivityNotMeet() {
        // ????????????
        PriceCalculateReqDTO calculateReqDTO = new PriceCalculateReqDTO().setUserId(randomLongId())
                .setItems(asList(new PriceCalculateReqDTO.Item().setSkuId(10L).setCount(2),
                        new PriceCalculateReqDTO.Item().setSkuId(20L).setCount(3)));
        // mock ??????(?????? SKU ??????)
        ProductSkuRespDTO productSku01 = randomPojo(ProductSkuRespDTO.class, o -> o.setId(10L).setPrice(100).setSpuId(1L));
        ProductSkuRespDTO productSku02 = randomPojo(ProductSkuRespDTO.class, o -> o.setId(20L).setPrice(50).setSpuId(2L));
        when(productSkuApi.getSkuList(eq(asSet(10L, 20L)))).thenReturn(asList(productSku01, productSku02));
        // mock ????????????????????? DiscountActivity ?????????
        RewardActivityDO rewardActivity01 = randomPojo(RewardActivityDO.class, o -> o.setId(1000L).setName("?????? 1000 ???")
                .setProductSpuIds(asList(10L, 20L)).setConditionType(PromotionConditionTypeEnum.PRICE.getType())
                .setRules(singletonList(new RewardActivityDO.Rule().setLimit(351).setDiscountPrice(70))));
        Map<RewardActivityDO, Set<Long>> matchRewardActivities = new LinkedHashMap<>();
        matchRewardActivities.put(rewardActivity01, asSet(1L, 2L));
        when(rewardActivityService.getMatchRewardActivities(eq(asSet(1L, 2L)))).thenReturn(matchRewardActivities);

        // ??????
        PriceCalculateRespDTO priceCalculate = priceService.calculatePrice(calculateReqDTO);
        // ?????? Order ??????
        PriceCalculateRespDTO.Order order = priceCalculate.getOrder();
        assertEquals(order.getOriginalPrice(), 350);
        assertEquals(order.getOrderPrice(), 350);
        assertEquals(order.getDiscountPrice(), 0);
        assertEquals(order.getPointPrice(), 0);
        assertEquals(order.getDeliveryPrice(), 0);
        assertEquals(order.getPayPrice(), 350);
        assertNull(order.getCouponId());
        // ?????? OrderItem ??????
        assertEquals(order.getItems().size(), 2);
        PriceCalculateRespDTO.OrderItem orderItem01 = order.getItems().get(0);
        assertEquals(orderItem01.getSkuId(), 10L);
        assertEquals(orderItem01.getCount(), 2);
        assertEquals(orderItem01.getOriginalPrice(), 200);
        assertEquals(orderItem01.getOriginalUnitPrice(), 100);
        assertEquals(orderItem01.getDiscountPrice(), 0);
        assertEquals(orderItem01.getPayPrice(), 200);
        assertEquals(orderItem01.getOrderPartPrice(), 0);
        assertEquals(orderItem01.getOrderDividePrice(), 200);
        PriceCalculateRespDTO.OrderItem orderItem02 = order.getItems().get(1);
        assertEquals(orderItem02.getSkuId(), 20L);
        assertEquals(orderItem02.getCount(), 3);
        assertEquals(orderItem02.getOriginalPrice(), 150);
        assertEquals(orderItem02.getOriginalUnitPrice(), 50);
        assertEquals(orderItem02.getDiscountPrice(), 0);
        assertEquals(orderItem02.getPayPrice(), 150);
        assertEquals(orderItem02.getOrderPartPrice(), 0);
        assertEquals(orderItem02.getOrderDividePrice(), 150);
        // ?????? Promotion ??????
        assertEquals(priceCalculate.getPromotions().size(), 1);
        PriceCalculateRespDTO.Promotion promotion01 = priceCalculate.getPromotions().get(0);
        assertEquals(promotion01.getId(), 1000L);
        assertEquals(promotion01.getName(), "?????? 1000 ???");
        assertEquals(promotion01.getType(), PromotionTypeEnum.REWARD_ACTIVITY.getType());
        assertEquals(promotion01.getLevel(), PromotionLevelEnum.ORDER.getLevel());
        assertEquals(promotion01.getOriginalPrice(), 350);
        assertEquals(promotion01.getDiscountPrice(), 0);
        assertFalse(promotion01.getMeet());
        assertEquals(promotion01.getMeetTip(), "TODO"); // TODO ????????????????????????
        assertEquals(promotion01.getItems().size(), 2);
        PriceCalculateRespDTO.PromotionItem promotionItem011 = promotion01.getItems().get(0);
        assertEquals(promotionItem011.getSkuId(), 10L);
        assertEquals(promotionItem011.getOriginalPrice(), 200);
        assertEquals(promotionItem011.getDiscountPrice(), 0);
        PriceCalculateRespDTO.PromotionItem promotionItem012 = promotion01.getItems().get(1);
        assertEquals(promotionItem012.getSkuId(), 20L);
        assertEquals(promotionItem012.getOriginalPrice(), 150);
        assertEquals(promotionItem012.getDiscountPrice(), 0);
    }

    @Test
    public void testCalculatePrice_coupon() {
        // ????????????
        PriceCalculateReqDTO calculateReqDTO = new PriceCalculateReqDTO().setUserId(randomLongId())
                .setItems(asList(new PriceCalculateReqDTO.Item().setSkuId(10L).setCount(2),
                        new PriceCalculateReqDTO.Item().setSkuId(20L).setCount(3),
                        new PriceCalculateReqDTO.Item().setSkuId(30L).setCount(4)))
                .setCouponId(1024L);
        // mock ??????(?????? SKU ??????)
        ProductSkuRespDTO productSku01 = randomPojo(ProductSkuRespDTO.class, o -> o.setId(10L).setPrice(100).setSpuId(1L));
        ProductSkuRespDTO productSku02 = randomPojo(ProductSkuRespDTO.class, o -> o.setId(20L).setPrice(50).setSpuId(2L));
        ProductSkuRespDTO productSku03 = randomPojo(ProductSkuRespDTO.class, o -> o.setId(30L).setPrice(30).setSpuId(3L));
        when(productSkuApi.getSkuList(eq(asSet(10L, 20L, 30L)))).thenReturn(asList(productSku01, productSku02, productSku03));
        // mock ?????????????????? Coupon ?????????
        CouponDO coupon = randomPojo(CouponDO.class, o -> o.setId(1024L).setName("????????????")
                .setProductScope(PromotionProductScopeEnum.SPU.getScope()).setProductSpuIds(asList(1L, 2L))
                .setUsePrice(350).setDiscountType(PromotionDiscountTypeEnum.PERCENT.getType())
                .setDiscountPercent(50).setDiscountLimitPrice(70));
        when(couponService.validCoupon(eq(1024L), eq(calculateReqDTO.getUserId()))).thenReturn(coupon);

        // ??????
        PriceCalculateRespDTO priceCalculate = priceService.calculatePrice(calculateReqDTO);
        // ?????? Order ??????
        PriceCalculateRespDTO.Order order = priceCalculate.getOrder();
        assertEquals(order.getOriginalPrice(), 470);
        assertEquals(order.getOrderPrice(), 470);
        assertEquals(order.getDiscountPrice(), 0);
        assertEquals(order.getPointPrice(), 0);
        assertEquals(order.getDeliveryPrice(), 0);
        assertEquals(order.getPayPrice(), 400);
        assertEquals(order.getCouponId(), 1024L);
        assertEquals(order.getCouponPrice(), 70);
        // ?????? OrderItem ??????
        assertEquals(order.getItems().size(), 3);
        PriceCalculateRespDTO.OrderItem orderItem01 = order.getItems().get(0);
        assertEquals(orderItem01.getSkuId(), 10L);
        assertEquals(orderItem01.getCount(), 2);
        assertEquals(orderItem01.getOriginalPrice(), 200);
        assertEquals(orderItem01.getOriginalUnitPrice(), 100);
        assertEquals(orderItem01.getDiscountPrice(), 0);
        assertEquals(orderItem01.getPayPrice(), 200);
        assertEquals(orderItem01.getOrderPartPrice(), 40);
        assertEquals(orderItem01.getOrderDividePrice(), 160);
        PriceCalculateRespDTO.OrderItem orderItem02 = order.getItems().get(1);
        assertEquals(orderItem02.getSkuId(), 20L);
        assertEquals(orderItem02.getCount(), 3);
        assertEquals(orderItem02.getOriginalPrice(), 150);
        assertEquals(orderItem02.getOriginalUnitPrice(), 50);
        assertEquals(orderItem02.getDiscountPrice(), 0);
        assertEquals(orderItem02.getPayPrice(), 150);
        assertEquals(orderItem02.getOrderPartPrice(), 30);
        assertEquals(orderItem02.getOrderDividePrice(), 120);
        PriceCalculateRespDTO.OrderItem orderItem03 = order.getItems().get(2);
        assertEquals(orderItem03.getSkuId(), 30L);
        assertEquals(orderItem03.getCount(), 4);
        assertEquals(orderItem03.getOriginalPrice(), 120);
        assertEquals(orderItem03.getOriginalUnitPrice(), 30);
        assertEquals(orderItem03.getDiscountPrice(), 0);
        assertEquals(orderItem03.getPayPrice(), 120);
        assertEquals(orderItem03.getOrderPartPrice(), 0);
        assertEquals(orderItem03.getOrderDividePrice(), 120);
        // ?????? Promotion ??????
        assertEquals(priceCalculate.getPromotions().size(), 1);
        PriceCalculateRespDTO.Promotion promotion01 = priceCalculate.getPromotions().get(0);
        assertEquals(promotion01.getId(), 1024L);
        assertEquals(promotion01.getName(), "????????????");
        assertEquals(promotion01.getType(), PromotionTypeEnum.COUPON.getType());
        assertEquals(promotion01.getLevel(), PromotionLevelEnum.COUPON.getLevel());
        assertEquals(promotion01.getOriginalPrice(), 350);
        assertEquals(promotion01.getDiscountPrice(), 70);
        assertTrue(promotion01.getMeet());
        assertEquals(promotion01.getMeetTip(), "??????????????? 0.70 ???");
        assertEquals(promotion01.getItems().size(), 2);
        PriceCalculateRespDTO.PromotionItem promotionItem011 = promotion01.getItems().get(0);
        assertEquals(promotionItem011.getSkuId(), 10L);
        assertEquals(promotionItem011.getOriginalPrice(), 200);
        assertEquals(promotionItem011.getDiscountPrice(), 40);
        PriceCalculateRespDTO.PromotionItem promotionItem012 = promotion01.getItems().get(1);
        assertEquals(promotionItem012.getSkuId(), 20L);
        assertEquals(promotionItem012.getOriginalPrice(), 150);
        assertEquals(promotionItem012.getDiscountPrice(), 30);
    }

    @Test
    public void testGetMeetCouponList() {
        // ????????????
        PriceCalculateReqDTO calculateReqDTO = new PriceCalculateReqDTO().setUserId(1024L)
                .setItems(singletonList(new PriceCalculateReqDTO.Item().setSkuId(10L).setCount(2)));
        // mock ??????(?????? SKU ??????)
        ProductSkuRespDTO productSku = randomPojo(ProductSkuRespDTO.class, o -> o.setId(10L).setPrice(100));
        when(productSkuApi.getSkuList(eq(asSet(10L)))).thenReturn(singletonList(productSku));
        // mock ??????(???????????????????????????????????????)
        CouponDO coupon01 = randomPojo(CouponDO.class);
        doThrow(new ServiceException(COUPON_VALID_TIME_NOT_NOW)).when(couponService).validCoupon(coupon01);
        // mock ??????(??????????????????????????????????????????????????????)
        CouponDO coupon02 = randomPojo(CouponDO.class);
        // mock ??????(??????????????????????????????)
        CouponDO coupon03 = randomPojo(CouponDO.class, o -> o.setProductScope(PromotionProductScopeEnum.ALL.getScope())
                .setUsePrice(300));
        // mock ??????(????????????????????????)
        CouponDO coupon04 = randomPojo(CouponDO.class, o -> o.setProductScope(PromotionProductScopeEnum.ALL.getScope())
                .setUsePrice(190));
        // mock ?????????????????????????????????????????????
        when(couponService.getCouponList(eq(1024L), eq(CouponStatusEnum.UNUSED.getStatus())))
                .thenReturn(asList(coupon01, coupon02, coupon03, coupon04));
        // ??????
        List<CouponMeetRespDTO> list = priceService.getMeetCouponList(calculateReqDTO);
        // ??????
        assertEquals(list.size(), 4);
        // ?????????????????????????????????????????????
        CouponMeetRespDTO couponMeetRespDTO01 = list.get(0);
        assertPojoEquals(couponMeetRespDTO01, coupon01);
        assertFalse(couponMeetRespDTO01.getMeet());
        assertEquals(couponMeetRespDTO01.getMeetTip(), "???????????????????????????");
        // ????????????????????????????????????????????????????????????
        CouponMeetRespDTO couponMeetRespDTO02 = list.get(1);
        assertPojoEquals(couponMeetRespDTO02, coupon02);
        assertFalse(couponMeetRespDTO02.getMeet());
        assertEquals(couponMeetRespDTO02.getMeetTip(), "??????????????????????????????????????????");
        // ????????????????????? %s ??????????????????
        CouponMeetRespDTO couponMeetRespDTO03 = list.get(2);
        assertPojoEquals(couponMeetRespDTO03, coupon03);
        assertFalse(couponMeetRespDTO03.getMeet());
        assertEquals(couponMeetRespDTO03.getMeetTip(), "?????????????????????????????????????????????");
        // ??????????????????????????????
        CouponMeetRespDTO couponMeetRespDTO04 = list.get(3);
        assertPojoEquals(couponMeetRespDTO04, coupon04);
        assertTrue(couponMeetRespDTO04.getMeet());
        assertNull(couponMeetRespDTO04.getMeetTip());
    }

}
