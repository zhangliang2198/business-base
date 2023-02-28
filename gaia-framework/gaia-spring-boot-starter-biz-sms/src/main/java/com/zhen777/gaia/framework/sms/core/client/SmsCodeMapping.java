package com.zhen777.gaia.framework.sms.core.client;

import com.zhen777.gaia.framework.common.exception.ErrorCode;
import com.zhen777.gaia.framework.sms.core.enums.SmsFrameworkErrorCodeConstants;

import java.util.function.Function;

/**
 * 将 API 的错误码，转换为通用的错误码
 *
 * @see SmsCommonResult
 * @see SmsFrameworkErrorCodeConstants
 *
 * @author 芋道源码
 */
public interface SmsCodeMapping extends Function<String, ErrorCode> {
}
