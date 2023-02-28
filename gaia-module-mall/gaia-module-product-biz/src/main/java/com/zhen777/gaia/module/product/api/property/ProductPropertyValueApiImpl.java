package com.zhen777.gaia.module.product.api.property;

import com.zhen777.gaia.module.product.api.property.dto.ProductPropertyValueDetailRespDTO;
import com.zhen777.gaia.module.product.convert.propertyvalue.ProductPropertyValueConvert;
import com.zhen777.gaia.module.product.service.property.ProductPropertyValueService;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.List;

/**
 * 商品属性值 API 实现类
 *
 * @author 芋道源码
 */
@Service
@Validated
public class ProductPropertyValueApiImpl implements ProductPropertyValueApi {

    @Resource
    private ProductPropertyValueService productPropertyValueService;

    @Override
    public List<ProductPropertyValueDetailRespDTO> getPropertyValueDetailList(Collection<Long> ids) {
        return ProductPropertyValueConvert.INSTANCE.convertList02(
                productPropertyValueService.getPropertyValueDetailList(ids));
    }

}
