package com.zhen777.www.framework.common.validation;


import com.zhen777.www.framework.common.core.IntArrayValuable;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 是否在枚举中验证器.
 *
 * @author mikoozhang[zhangliang2198@outlook.com]
 * @version 1.0.0
 */
public class InEnumValidator implements ConstraintValidator<InEnum, Integer> {

    private List<Integer> values;

    @Override
    public void initialize(InEnum annotation) {
        // getEnumConstants,获取类上的枚举信息，如果是枚举类。
        IntArrayValuable[] values = annotation.value().getEnumConstants();
        if (values.length == 0) {
            this.values = Collections.emptyList();
        } else {
            this.values = Arrays.stream(values[0].array()).boxed().collect(Collectors.toList());
        }
    }

    @Override
    public boolean isValid(Integer value, ConstraintValidatorContext context) {
        // 为空时，默认不校验，即认为通过
        if (value == null) {
            return true;
        }
        // 校验通过
        if (values.contains(value)) {
            return true;
        }
        // 校验不通过，自定义提示语句（因为，注解上的 value 是枚举类，无法获得枚举类的实际值）
        context.disableDefaultConstraintViolation(); // 禁用默认的 message 的值

        // getDefaultConstraintMessageTemplate 自动获取 message 字段
        context.buildConstraintViolationWithTemplate(context.getDefaultConstraintMessageTemplate()
                //重新添加错误提示语句
                .replaceAll("\\{value}", values.toString())).addConstraintViolation();
        return false;
    }

}
