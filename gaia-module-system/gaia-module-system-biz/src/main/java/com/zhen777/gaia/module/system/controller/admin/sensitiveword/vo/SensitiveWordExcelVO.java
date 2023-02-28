package com.zhen777.gaia.module.system.controller.admin.sensitiveword.vo;

import com.zhen777.gaia.framework.excel.core.annotations.DictFormat;
import com.zhen777.gaia.framework.excel.core.convert.DictConvert;
import com.zhen777.gaia.module.system.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelProperty;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

/**
 * 敏感词 Excel VO
 *
 * @author 永不言败
 */
@Data
public class SensitiveWordExcelVO {

    @ExcelProperty("编号")
    private Long id;

    @ExcelProperty("敏感词")
    private String name;

    @ExcelProperty("标签")
    private List<String> tags;

    @ExcelProperty(value = "状态", converter = DictConvert.class)
    @DictFormat(DictTypeConstants.COMMON_STATUS)
    private Integer status;

    @ExcelProperty("描述")
    private String description;

    @ExcelProperty("创建时间")
    private LocalDateTime createTime;

}
