package com.zhen777.gaia.module.infra.framework.web.config;

import com.zhen777.gaia.framework.swagger.config.GaiaSwaggerAutoConfiguration;
import org.springdoc.core.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * infra 模块的 web 组件的 Configuration
 *
 * @author 芋道源码
 */
@Configuration(proxyBeanMethods = false)
public class InfraWebConfiguration {

    /**
     * infra 模块的 API 分组
     */
    @Bean
    public GroupedOpenApi infraGroupedOpenApi() {
        return GaiaSwaggerAutoConfiguration.buildGroupedOpenApi("infra");
    }

}
