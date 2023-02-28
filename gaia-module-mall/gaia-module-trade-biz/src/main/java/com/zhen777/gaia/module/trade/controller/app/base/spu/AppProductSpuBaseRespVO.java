package com.zhen777.gaia.module.trade.controller.app.base.spu;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;

/**
 * 商品 SPU 基础 Response VO
 *
 * @author 芋道源码
 */
@Data
public class AppProductSpuBaseRespVO {

    @Schema(description = "主键", required = true, example = "1024")
    private Long id;

    @Schema(description = "商品 SPU 名字", required = true, example = "芋道")
    private String name;

    @Schema(description = "商品主图地址", example = "https://www.iocoder.cn/xx.png")
    private List<String> picUrls;

}
