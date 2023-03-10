package com.zhen777.gaia.module.promotion.service.discount;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.test.core.ut.BaseDbUnitTest;
import com.zhen777.gaia.module.promotion.controller.admin.discount.vo.DiscountActivityBaseVO;
import com.zhen777.gaia.module.promotion.controller.admin.discount.vo.DiscountActivityCreateReqVO;
import com.zhen777.gaia.module.promotion.controller.admin.discount.vo.DiscountActivityPageReqVO;
import com.zhen777.gaia.module.promotion.controller.admin.discount.vo.DiscountActivityUpdateReqVO;
import com.zhen777.gaia.module.promotion.dal.dataobject.discount.DiscountActivityDO;
import com.zhen777.gaia.module.promotion.dal.dataobject.discount.DiscountProductDO;
import com.zhen777.gaia.module.promotion.dal.mysql.discount.DiscountActivityMapper;
import com.zhen777.gaia.module.promotion.dal.mysql.discount.DiscountProductMapper;
import com.zhen777.gaia.module.promotion.enums.common.PromotionActivityStatusEnum;
import com.zhen777.gaia.module.promotion.enums.common.PromotionDiscountTypeEnum;
import org.junit.jupiter.api.Test;
import org.springframework.context.annotation.Import;

import javax.annotation.Resource;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import static com.zhen777.gaia.framework.common.util.date.LocalDateTimeUtils.addTime;
import static com.zhen777.gaia.framework.common.util.date.LocalDateTimeUtils.buildTime;
import static com.zhen777.gaia.framework.common.util.object.ObjectUtils.cloneIgnoreId;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertPojoEquals;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertServiceException;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.randomLongId;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.randomPojo;
import static com.zhen777.gaia.module.promotion.enums.ErrorCodeConstants.DISCOUNT_ACTIVITY_NOT_EXISTS;
import static java.util.Arrays.asList;
import static org.junit.jupiter.api.Assertions.*;

/**
* {@link DiscountActivityServiceImpl} ??????????????????
*
* @author ????????????
*/
@Import(DiscountActivityServiceImpl.class)
public class DiscountActivityServiceImplTest extends BaseDbUnitTest {

    @Resource
    private DiscountActivityServiceImpl discountActivityService;

    @Resource
    private DiscountActivityMapper discountActivityMapper;
    @Resource
    private DiscountProductMapper discountProductMapper;

    @Test
    public void testCreateDiscountActivity_success() {
        // ????????????
        DiscountActivityCreateReqVO reqVO = randomPojo(DiscountActivityCreateReqVO.class, o -> {
            // ??????????????????????????????
            o.setStartTime(addTime(Duration.ofDays(1))).setEndTime(addTime(Duration.ofDays(2)));
            // ????????????
            o.setProducts(asList(new DiscountActivityBaseVO.Product().setSpuId(1L).setSkuId(2L)
                            .setDiscountType(PromotionDiscountTypeEnum.PRICE.getType()).setDiscountPrice(3),
                    new DiscountActivityBaseVO.Product().setSpuId(10L).setSkuId(20L)
                            .setDiscountType(PromotionDiscountTypeEnum.PERCENT.getType()).setDiscountPercent(30)));
        });

        // ??????
        Long discountActivityId = discountActivityService.createDiscountActivity(reqVO);
        // ??????
        assertNotNull(discountActivityId);
        // ????????????
        DiscountActivityDO discountActivity = discountActivityMapper.selectById(discountActivityId);
        assertPojoEquals(reqVO, discountActivity);
        assertEquals(discountActivity.getStatus(), PromotionActivityStatusEnum.WAIT.getStatus());
        // ????????????
        List<DiscountProductDO> discountProducts = discountProductMapper.selectList(DiscountProductDO::getActivityId, discountActivity.getId());
        assertEquals(discountProducts.size(), reqVO.getProducts().size());
        for (int i = 0; i < reqVO.getProducts().size(); i++) {
            DiscountActivityBaseVO.Product product = reqVO.getProducts().get(i);
            DiscountProductDO discountProduct = discountProducts.get(i);
            assertEquals(discountProduct.getActivityId(), discountActivity.getId());
            assertEquals(discountProduct.getSpuId(), product.getSpuId());
            assertEquals(discountProduct.getSkuId(), product.getSkuId());
            assertEquals(discountProduct.getDiscountType(), product.getDiscountType());
            assertEquals(discountProduct.getDiscountPrice(), product.getDiscountPrice());
            assertEquals(discountProduct.getDiscountPercent(), product.getDiscountPercent());
        }
    }

    @Test
    public void testUpdateDiscountActivity_success() {
        // mock ??????(??????)
        DiscountActivityDO dbDiscountActivity = randomPojo(DiscountActivityDO.class);
        discountActivityMapper.insert(dbDiscountActivity);// @Sql: ?????????????????????????????????
        // mock ??????(??????)
        DiscountProductDO dbDiscountProduct01 = randomPojo(DiscountProductDO.class, o -> o.setActivityId(dbDiscountActivity.getId())
                .setSpuId(1L).setSkuId(2L).setDiscountType(PromotionDiscountTypeEnum.PRICE.getType()).setDiscountPrice(3).setDiscountPercent(null));
        DiscountProductDO dbDiscountProduct02 = randomPojo(DiscountProductDO.class, o -> o.setActivityId(dbDiscountActivity.getId())
                .setSpuId(10L).setSkuId(20L).setDiscountType(PromotionDiscountTypeEnum.PERCENT.getType()).setDiscountPercent(30).setDiscountPrice(null));
        discountProductMapper.insert(dbDiscountProduct01);
        discountProductMapper.insert(dbDiscountProduct02);
        // ????????????
        DiscountActivityUpdateReqVO reqVO = randomPojo(DiscountActivityUpdateReqVO.class, o -> {
            o.setId(dbDiscountActivity.getId()); // ??????????????? ID
            // ??????????????????????????????
            o.setStartTime(addTime(Duration.ofDays(1))).setEndTime(addTime(Duration.ofDays(2)));
            // ????????????
            o.setProducts(asList(new DiscountActivityBaseVO.Product().setSpuId(1L).setSkuId(2L)
                            .setDiscountType(PromotionDiscountTypeEnum.PRICE.getType()).setDiscountPrice(3).setDiscountPercent(null),
                    new DiscountActivityBaseVO.Product().setSpuId(100L).setSkuId(200L)
                            .setDiscountType(PromotionDiscountTypeEnum.PERCENT.getType()).setDiscountPercent(30).setDiscountPrice(null)));
        });

        // ??????
        discountActivityService.updateDiscountActivity(reqVO);
        // ????????????
        DiscountActivityDO discountActivity = discountActivityMapper.selectById(reqVO.getId()); // ???????????????
        assertPojoEquals(reqVO, discountActivity);
        assertEquals(discountActivity.getStatus(), PromotionActivityStatusEnum.WAIT.getStatus());
        // ????????????
        List<DiscountProductDO> discountProducts = discountProductMapper.selectList(DiscountProductDO::getActivityId, discountActivity.getId());
        assertEquals(discountProducts.size(), reqVO.getProducts().size());
        for (int i = 0; i < reqVO.getProducts().size(); i++) {
            DiscountActivityBaseVO.Product product = reqVO.getProducts().get(i);
            DiscountProductDO discountProduct = discountProducts.get(i);
            assertEquals(discountProduct.getActivityId(), discountActivity.getId());
            assertEquals(discountProduct.getSpuId(), product.getSpuId());
            assertEquals(discountProduct.getSkuId(), product.getSkuId());
            assertEquals(discountProduct.getDiscountType(), product.getDiscountType());
            assertEquals(discountProduct.getDiscountPrice(), product.getDiscountPrice());
            assertEquals(discountProduct.getDiscountPercent(), product.getDiscountPercent());
        }
    }

    @Test
    public void testCloseDiscountActivity() {
        // mock ??????
        DiscountActivityDO dbDiscountActivity = randomPojo(DiscountActivityDO.class,
                o -> o.setStatus(PromotionActivityStatusEnum.WAIT.getStatus()));
        discountActivityMapper.insert(dbDiscountActivity);// @Sql: ?????????????????????????????????
        // ????????????
        Long id = dbDiscountActivity.getId();

        // ??????
        discountActivityService.closeRewardActivity(id);
        // ????????????
        DiscountActivityDO discountActivity = discountActivityMapper.selectById(id);
        assertEquals(discountActivity.getStatus(), PromotionActivityStatusEnum.CLOSE.getStatus());
    }

    @Test
    public void testUpdateDiscountActivity_notExists() {
        // ????????????
        DiscountActivityUpdateReqVO reqVO = randomPojo(DiscountActivityUpdateReqVO.class);

        // ??????, ???????????????
        assertServiceException(() -> discountActivityService.updateDiscountActivity(reqVO), DISCOUNT_ACTIVITY_NOT_EXISTS);
    }

    @Test
    public void testDeleteDiscountActivity_success() {
        // mock ??????
        DiscountActivityDO dbDiscountActivity = randomPojo(DiscountActivityDO.class,
                o -> o.setStatus(PromotionActivityStatusEnum.CLOSE.getStatus()));
        discountActivityMapper.insert(dbDiscountActivity);// @Sql: ?????????????????????????????????
        // ????????????
        Long id = dbDiscountActivity.getId();

        // ??????
        discountActivityService.deleteDiscountActivity(id);
       // ????????????????????????
       assertNull(discountActivityMapper.selectById(id));
    }

    @Test
    public void testDeleteDiscountActivity_notExists() {
        // ????????????
        Long id = randomLongId();

        // ??????, ???????????????
        assertServiceException(() -> discountActivityService.deleteDiscountActivity(id), DISCOUNT_ACTIVITY_NOT_EXISTS);
    }

    @Test
    public void testGetDiscountActivityPage() {
       // mock ??????
       DiscountActivityDO dbDiscountActivity = randomPojo(DiscountActivityDO.class, o -> { // ???????????????
           o.setName("??????");
           o.setStatus(PromotionActivityStatusEnum.WAIT.getStatus());
           o.setCreateTime(buildTime(2021, 1, 15));
       });
       discountActivityMapper.insert(dbDiscountActivity);
       // ?????? name ?????????
       discountActivityMapper.insert(cloneIgnoreId(dbDiscountActivity, o -> o.setName("??????")));
       // ?????? status ?????????
       discountActivityMapper.insert(cloneIgnoreId(dbDiscountActivity, o -> o.setStatus(PromotionActivityStatusEnum.END.getStatus())));
       // ?????? createTime ?????????
       discountActivityMapper.insert(cloneIgnoreId(dbDiscountActivity, o -> o.setCreateTime(buildTime(2021, 2, 10))));
       // ????????????
       DiscountActivityPageReqVO reqVO = new DiscountActivityPageReqVO();
       reqVO.setName("??????");
       reqVO.setStatus(PromotionActivityStatusEnum.WAIT.getStatus());
       reqVO.setCreateTime((new LocalDateTime[]{buildTime(2021, 1, 1), buildTime(2021, 1, 31)}));

       // ??????
       PageResult<DiscountActivityDO> pageResult = discountActivityService.getDiscountActivityPage(reqVO);
       // ??????
       assertEquals(1, pageResult.getTotal());
       assertEquals(1, pageResult.getList().size());
       assertPojoEquals(dbDiscountActivity, pageResult.getList().get(0));
    }

}
