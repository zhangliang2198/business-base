package com.zhen777.gaia.module.product.service.spu;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.map.MapUtil;
import cn.hutool.core.util.RandomUtil;
import com.zhen777.gaia.framework.common.exception.ServiceException;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.common.util.collection.CollectionUtils;
import com.zhen777.gaia.framework.common.util.collection.SetUtils;
import com.zhen777.gaia.framework.test.core.ut.BaseDbUnitTest;
import com.zhen777.gaia.module.product.controller.admin.sku.vo.ProductSkuCreateOrUpdateReqVO;
import com.zhen777.gaia.module.product.controller.admin.spu.vo.ProductSpuCreateReqVO;
import com.zhen777.gaia.module.product.controller.admin.spu.vo.ProductSpuPageReqVO;
import com.zhen777.gaia.module.product.controller.admin.spu.vo.ProductSpuRespVO;
import com.zhen777.gaia.module.product.controller.admin.spu.vo.ProductSpuUpdateReqVO;
import com.zhen777.gaia.module.product.controller.app.spu.vo.AppProductSpuPageReqVO;
import com.zhen777.gaia.module.product.convert.spu.ProductSpuConvert;
import com.zhen777.gaia.module.product.dal.dataobject.sku.ProductSkuDO;
import com.zhen777.gaia.module.product.dal.dataobject.spu.ProductSpuDO;
import com.zhen777.gaia.module.product.dal.mysql.spu.ProductSpuMapper;
import com.zhen777.gaia.module.product.enums.spu.ProductSpuSpecTypeEnum;
import com.zhen777.gaia.module.product.enums.spu.ProductSpuStatusEnum;
import com.zhen777.gaia.module.product.service.brand.ProductBrandServiceImpl;
import com.zhen777.gaia.module.product.service.category.ProductCategoryServiceImpl;
import com.zhen777.gaia.module.product.service.property.ProductPropertyService;
import com.zhen777.gaia.module.product.service.property.ProductPropertyValueService;
import com.zhen777.gaia.module.product.service.sku.ProductSkuServiceImpl;
import com.google.common.collect.Lists;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;

import javax.annotation.Resource;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static com.zhen777.gaia.framework.common.util.object.ObjectUtils.cloneIgnoreId;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertPojoEquals;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.randomPojo;
import static org.junit.jupiter.api.Assertions.assertEquals;

// TODO @?????????review ???????????????

/**
 * {@link ProductSpuServiceImpl} ??????????????????
 *
 * @author ????????????
 */
@Import(ProductSpuServiceImpl.class)
@Disabled // TODO ?????????????????????
public class ProductSpuServiceImplTest extends BaseDbUnitTest {

    @Resource
    private ProductSpuServiceImpl productSpuService;

    @Resource
    private ProductSpuMapper productSpuMapper;

    @MockBean
    private ProductSkuServiceImpl productSkuService;
    @MockBean
    private ProductCategoryServiceImpl categoryService;
    @MockBean
    private ProductBrandServiceImpl brandService;
    @MockBean
    private ProductPropertyService productPropertyService;
    @MockBean
    private ProductPropertyValueService productPropertyValueService;

    public String generateNo() {
        return DateUtil.format(new Date(), "yyyyMMddHHmmss") + RandomUtil.randomInt(100000, 999999);
    }

    public Long generateId() {
        return RandomUtil.randomLong(100000, 999999);
    }

    @Test
    public void testCreateSpu_success() {
        // ????????????
        ProductSpuCreateReqVO createReqVO = randomPojo(ProductSpuCreateReqVO.class, o -> {
            o.setSpecType(ProductSpuSpecTypeEnum.DISABLE.getType());
            o.setStatus(ProductSpuStatusEnum.ENABLE.getStatus());
        });

        // ??????SKU
        List<ProductSkuCreateOrUpdateReqVO> skuCreateReqList = createReqVO.getSkus();

        Long spu = productSpuService.createSpu(createReqVO);
        ProductSpuDO productSpuDO = productSpuMapper.selectById(spu);

        createReqVO.setMarketPrice(CollectionUtils.getMaxValue(skuCreateReqList, ProductSkuCreateOrUpdateReqVO::getMarketPrice));
//        createReqVO.setMaxPrice(CollectionUtils.getMaxValue(skuCreateReqList, ProductSkuCreateOrUpdateReqVO::getPrice));
//        createReqVO.setMinPrice(CollectionUtils.getMinValue(skuCreateReqList, ProductSkuCreateOrUpdateReqVO::getPrice));
//        createReqVO.setTotalStock(CollectionUtils.getSumValue(skuCreateReqList, ProductSkuCreateOrUpdateReqVO::getStock, Integer::sum));

        assertPojoEquals(createReqVO, productSpuDO);

    }

    @Test
    public void testUpdateSpu_success() {
        // ????????????
        ProductSpuDO createReqVO = randomPojo(ProductSpuDO.class);
        productSpuMapper.insert(createReqVO);
        // ????????????
        ProductSpuUpdateReqVO reqVO = randomPojo(ProductSpuUpdateReqVO.class, o -> {
            o.setId(createReqVO.getId()); // ??????????????? ID
            o.setSpecType(ProductSpuSpecTypeEnum.DISABLE.getType());
            o.setStatus(ProductSpuStatusEnum.DISABLE.getStatus());
        });
        // ??????
        productSpuService.updateSpu(reqVO);

        List<ProductSkuCreateOrUpdateReqVO> skuCreateReqList = reqVO.getSkus();
        reqVO.setMarketPrice(CollectionUtils.getMaxValue(skuCreateReqList, ProductSkuCreateOrUpdateReqVO::getMarketPrice));
//        reqVO.setMaxPrice(CollectionUtils.getMaxValue(skuCreateReqList, ProductSkuCreateOrUpdateReqVO::getPrice));
//        reqVO.setMinPrice(CollectionUtils.getMinValue(skuCreateReqList, ProductSkuCreateOrUpdateReqVO::getPrice));
//        reqVO.setTotalStock(CollectionUtils.getSumValue(skuCreateReqList, ProductSkuCreateOrUpdateReqVO::getStock, Integer::sum));

        // ????????????????????????
        ProductSpuDO spu = productSpuMapper.selectById(reqVO.getId()); // ???????????????
        assertPojoEquals(reqVO, spu);
    }

    @Test
    public void testValidateSpuExists_exception() {
        ProductSpuUpdateReqVO reqVO = randomPojo(ProductSpuUpdateReqVO.class, o -> {
            o.setSpecType(ProductSpuSpecTypeEnum.DISABLE.getType());
            o.setStatus(ProductSpuStatusEnum.DISABLE.getStatus());
        });
        // ??????
        Assertions.assertThrows(ServiceException.class, () -> productSpuService.updateSpu(reqVO));
    }

    @Test
    void deleteSpu() {
        // ????????????
        ProductSpuDO createReqVO = randomPojo(ProductSpuDO.class);
        productSpuMapper.insert(createReqVO);

        // ??????
        productSpuService.deleteSpu(createReqVO.getId());

        Assertions.assertNull(productSpuMapper.selectById(createReqVO.getId()));
    }

    @Test
    void getSpu() {
        // ????????????
        ProductSpuDO createReqVO = randomPojo(ProductSpuDO.class);
        productSpuMapper.insert(createReqVO);

        ProductSpuDO spu = productSpuService.getSpu(createReqVO.getId());
        assertPojoEquals(createReqVO, spu);
    }

    @Test
    void getSpuList() {
        // ????????????
        ArrayList<ProductSpuDO> createReqVO = Lists.newArrayList(randomPojo(ProductSpuDO.class), randomPojo(ProductSpuDO.class));
        productSpuMapper.insertBatch(createReqVO);

        // ??????
        List<ProductSpuDO> spuList = productSpuService.getSpuList(createReqVO.stream().map(ProductSpuDO::getId).collect(Collectors.toList()));
        Assertions.assertIterableEquals(createReqVO, spuList);
    }

    @Test
    void getSpuPage_alarmStock_empty() {
        // ??????
        ProductSpuPageReqVO productSpuPageReqVO = new ProductSpuPageReqVO();
        productSpuPageReqVO.setAlarmStock(true);

        PageResult<ProductSpuDO> spuPage = productSpuService.getSpuPage(productSpuPageReqVO);

        PageResult<Object> result = PageResult.empty();
        Assertions.assertIterableEquals(result.getList(), spuPage.getList());
        assertEquals(spuPage.getTotal(), result.getTotal());
    }

    @Test
    void getSpuPage_alarmStock() {
        // mock ??????
        Long brandId = generateId();
        Long categoryId = generateId();
        String code = generateNo();

        // ????????????
        ProductSpuDO createReqVO = randomPojo(ProductSpuDO.class, o->{
            o.setStatus(ProductSpuStatusEnum.ENABLE.getStatus());
            o.setTotalStock(500);
            o.setMinPrice(1);
            o.setMaxPrice(50);
            o.setMarketPrice(25);
            o.setSpecType(ProductSpuSpecTypeEnum.RECYCLE.getType());
            o.setBrandId(brandId);
            o.setCategoryId(categoryId);
            o.setClickCount(100);
            o.setCode(code);
            o.setDescription("????????????");
            o.setPicUrls(new ArrayList<>());
            o.setName("??????");
            o.setSalesCount(100);
            o.setSellPoint("????????????");
            o.setShowStock(true);
            o.setVideoUrl("");
        });
        productSpuMapper.insert(createReqVO);

        Set<Long> alarmStockSpuIds = SetUtils.asSet(createReqVO.getId());

        List<ProductSkuDO> productSpuDOS = Arrays.asList(randomPojo(ProductSkuDO.class, o -> {
            o.setSpuId(createReqVO.getId());
        }), randomPojo(ProductSkuDO.class, o -> {
            o.setSpuId(createReqVO.getId());
        }));

        Mockito.when(productSkuService.getSkuListByAlarmStock()).thenReturn(productSpuDOS);

        // ??????
        ProductSpuPageReqVO productSpuPageReqVO = new ProductSpuPageReqVO();
        productSpuPageReqVO.setAlarmStock(true);
        PageResult<ProductSpuDO> spuPage = productSpuService.getSpuPage(productSpuPageReqVO);

        PageResult<ProductSpuRespVO> result = ProductSpuConvert.INSTANCE.convertPage(productSpuMapper.selectPage(productSpuPageReqVO, alarmStockSpuIds));
        Assertions.assertIterableEquals(result.getList(), spuPage.getList());
        assertEquals(spuPage.getTotal(), result.getTotal());
    }

    @Test
    void getSpuPage() {
        // mock ??????
        Long brandId = generateId();
        Long categoryId = generateId();

        // ????????????
        ProductSpuDO createReqVO = randomPojo(ProductSpuDO.class, o->{
            o.setStatus(ProductSpuStatusEnum.ENABLE.getStatus());
            o.setTotalStock(1);
            o.setMinPrice(1);
            o.setMaxPrice(1);
            o.setMarketPrice(1);
            o.setSpecType(ProductSpuSpecTypeEnum.RECYCLE.getType());
            o.setBrandId(brandId);
            o.setCategoryId(categoryId);
            o.setClickCount(1);
            o.setCode(generateNo());
            o.setDescription("????????????");
            o.setPicUrls(new ArrayList<>());
            o.setName("??????");
            o.setSalesCount(1);
            o.setSellPoint("??????");
            o.setShowStock(true);
        });

        // ????????????
        productSpuMapper.insert(createReqVO);
        // ?????? status ?????????
        productSpuMapper.insert(cloneIgnoreId(createReqVO, o -> o.setStatus(ProductSpuStatusEnum.DISABLE.getStatus())));
        productSpuMapper.insert(cloneIgnoreId(createReqVO, o -> o.setStatus(ProductSpuStatusEnum.RECYCLE.getStatus())));
        // ?????? SpecType ?????????
        productSpuMapper.insert(cloneIgnoreId(createReqVO, o -> o.setSpecType(ProductSpuSpecTypeEnum.DISABLE.getType())));
        // ?????? BrandId ?????????
        productSpuMapper.insert(cloneIgnoreId(createReqVO, o -> o.setBrandId(generateId())));
        // ?????? CategoryId ?????????
        productSpuMapper.insert(cloneIgnoreId(createReqVO, o -> o.setCategoryId(generateId())));

        // ??????
        ProductSpuPageReqVO productSpuPageReqVO = new ProductSpuPageReqVO();
        productSpuPageReqVO.setAlarmStock(false);
        productSpuPageReqVO.setBrandId(brandId);
        productSpuPageReqVO.setStatus(ProductSpuStatusEnum.ENABLE.getStatus());
        productSpuPageReqVO.setCategoryId(categoryId);

        PageResult<ProductSpuDO> spuPage = productSpuService.getSpuPage(productSpuPageReqVO);

        PageResult<ProductSpuRespVO> result = ProductSpuConvert.INSTANCE.convertPage(productSpuMapper.selectPage(productSpuPageReqVO, (Set<Long>) null));
        assertEquals(result, spuPage);
    }

    @Test
    void testGetSpuPage() {
// ????????????
        ProductSpuDO createReqVO = randomPojo(ProductSpuDO.class, o -> {
            o.setCategoryId(2L);
        });
        productSpuMapper.insert(createReqVO);

        // ??????
        AppProductSpuPageReqVO appSpuPageReqVO = new AppProductSpuPageReqVO();
        appSpuPageReqVO.setCategoryId(2L);

//        PageResult<AppSpuPageItemRespVO> spuPage = productSpuService.getSpuPage(appSpuPageReqVO);
//
//        PageResult<ProductSpuDO> result = productSpuMapper.selectPage(
//                ProductSpuConvert.INSTANCE.convert(appSpuPageReqVO));
//
//        List<AppSpuPageItemRespVO> collect = result.getList()
//                .stream()
//                .map(ProductSpuConvert.INSTANCE::convertAppResp)
//                .collect(Collectors.toList());
//
//        Assertions.assertIterableEquals(collect, spuPage.getList());
//        assertEquals(spuPage.getTotal(), result.getTotal());
    }


    /**
     * ??????????????????
     *
     * @param data ??????
     * @return ????????????
     */
    public static <T> List<List<T>> cartesianProduct(List<List<T>> data) {
        List<List<T>> res = null; // ?????????(????????????N???List??????????????????????????????N-1???List?????????????????????)
        for (List<T> list : data) { // ????????????
            List<List<T>> temp = new ArrayList<>(); // ??????????????????????????????????????????????????????????????????
            if (res == null) { // ????????????null????????????????????????list????????????List
                for (T t : list) { // ???????????????List
                    // ??????stream??????List????????????List???????????????????????????????????????????????????????????????List?????????????????????????????????????????????????????????
                    temp.add(Stream.of(t).collect(Collectors.toList()));
                }
                res = temp; // ????????????????????????????????????
                continue; // ??????????????????
            }
            // ???????????????List???????????????????????????????????????????????????List?????????????????????
            for (T t : list) { // ??????
                for (List<T> rl : res) { // ?????????????????????????????????
                    // ??????stream??????List
                    temp.add(Stream.concat(rl.stream(), Stream.of(t)).collect(Collectors.toList()));
                }
            }
            res = temp; // ????????????????????????????????????
        }
        // ????????????
        return res;
    }

    @Test
    public void testUpdateSpuStock() {
        // ????????????
        Map<Long, Integer> stockIncrCounts = MapUtil.builder(1L, 10).put(2L, -20).build();
        // mock ??????????????????
        productSpuMapper.insert(randomPojo(ProductSpuDO.class, o -> o.setId(1L).setTotalStock(20)));
        productSpuMapper.insert(randomPojo(ProductSpuDO.class, o -> o.setId(2L).setTotalStock(30)));

        // ??????
        productSpuService.updateSpuStock(stockIncrCounts);
        // ??????
        assertEquals(productSpuService.getSpu(1L).getTotalStock(), 30);
        assertEquals(productSpuService.getSpu(2L).getTotalStock(), 10);
    }

}
