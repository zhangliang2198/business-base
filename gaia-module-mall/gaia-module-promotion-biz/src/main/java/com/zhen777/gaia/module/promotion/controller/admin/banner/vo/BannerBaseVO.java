package com.zhen777.gaia.module.promotion.controller.admin.banner.vo;

import com.zhen777.gaia.framework.common.enums.CommonStatusEnum;
import com.zhen777.gaia.framework.common.validation.InEnum;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * Banner Base VO，提供给添加、修改、详细的子 VO 使用
 * 如果子 VO 存在差异的字段，请不要添加到这里，影响 Swagger 文档生成
 * @author xia
 */
@Data
public class BannerBaseVO {

    @Schema(description = "标题", required = true)
    @NotNull(message = "标题不能为空")
    private String title;

    @Schema(description = "跳转链接", required = true)
    @NotNull(message = "跳转链接不能为空")
    private String url;

    @Schema(description = "图片地址", required = true)
    @NotNull(message = "图片地址不能为空")
    private String picUrl;

    @Schema(description = "排序", required = true)
    @NotNull(message = "排序不能为空")
    private Integer sort;

    @Schema(description = "状态", required = true)
    @NotNull(message = "状态不能为空")
    @InEnum(CommonStatusEnum.class)
    private Integer status;

    @Schema(description = "备注")
    private String memo;

}