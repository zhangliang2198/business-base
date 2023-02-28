package com.zhen777.gaia.module.product.service.spu;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.product.controller.admin.spu.vo.*;
import com.zhen777.gaia.module.product.controller.app.spu.vo.AppProductSpuPageReqVO;
import com.zhen777.gaia.module.product.dal.dataobject.spu.ProductSpuDO;

import javax.validation.Valid;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import static com.zhen777.gaia.framework.common.util.collection.CollectionUtils.convertMap;

/**
 * 商品 SPU Service 接口
 *
 * @author 芋道源码
 */
public interface ProductSpuService {

    /**
     * 创建商品 SPU
     *
     * @param createReqVO 创建信息
     * @return 编号
     */
    Long createSpu(@Valid ProductSpuCreateReqVO createReqVO);

    /**
     * 更新商品 SPU
     *
     * @param updateReqVO 更新信息
     */
    void updateSpu(@Valid ProductSpuUpdateReqVO updateReqVO);

    /**
     * 删除商品 SPU
     *
     * @param id 编号
     */
    void deleteSpu(Long id);

    /**
     * 获得商品 SPU
     *
     * @param id 编号
     * @return 商品 SPU
     */
    ProductSpuDO getSpu(Long id);

    /**
     * 获得商品 SPU 列表
     *
     * @param ids 编号数组
     * @return 商品 SPU 列表
     */
    List<ProductSpuDO> getSpuList(Collection<Long> ids);

    /**
     * 获得商品 SPU 映射
     *
     * @param ids 编号数组
     * @return 商品 SPU 映射
     */
    default Map<Long, ProductSpuDO> getSpuMap(Collection<Long> ids) {
        return convertMap(getSpuList(ids), ProductSpuDO::getId);
    }

    /**
     * 获得所有商品 SPU 列表
     *
     * @return 商品 SPU 列表
     */
    List<ProductSpuDO> getSpuList();

    /**
     * 获得商品 SPU 分页
     *
     * @param pageReqVO 分页查询
     * @return 商品spu分页
     */
    PageResult<ProductSpuDO> getSpuPage(ProductSpuPageReqVO pageReqVO);

    /**
     * 获得商品 SPU 分页
     *
     * @param pageReqVO 分页查询
     * @param status 状态
     * @return 商品 SPU 分页
     */
    PageResult<ProductSpuDO> getSpuPage(AppProductSpuPageReqVO pageReqVO, Integer status);

    /**
     * 更新商品 SPU 库存（增量）
     *
     * @param stockIncrCounts SPU 编号与库存变化（增量）的映射
     */
    void updateSpuStock(Map<Long, Integer> stockIncrCounts);

}
