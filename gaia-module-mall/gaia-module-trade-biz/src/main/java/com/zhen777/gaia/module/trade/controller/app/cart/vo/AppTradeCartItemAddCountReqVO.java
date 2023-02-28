package com.zhen777.gaia.module.trade.controller.app.cart.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Schema(description = "用户 App - 购物车添加购物项 Request VO")
@Data
public class AppTradeCartItemAddCountReqVO {

    @Schema(description = "商品 SKU 编号", required = true,example = "1024")
    @NotNull(message = "商品 SKU 编号不能为空")
    private Long skuId;

    @Schema(description = "新增商品数量", required = true, example = "1")
    @NotNull(message = "数量不能为空")
    @Min(message = "数量必须大于 0", value = 1L)
    private Integer count;

}
