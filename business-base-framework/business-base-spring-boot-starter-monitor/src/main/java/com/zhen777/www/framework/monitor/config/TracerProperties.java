package com.zhen777.www.framework.monitor.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * BizTracer配置类
 * <p>
 * .
 *
 * @author mikoozhang[zhangliang2198@outlook.com]
 * @version 1.0.0
 */
@ConfigurationProperties("business-base.tracer")
@Data
public class TracerProperties {
}
