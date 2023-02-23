package com.zhen777.www.framework.banner.config;

import com.zhen777.www.framework.banner.core.BannerApplicationRunner;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.context.annotation.Bean;

/**
 * Banner 的自动配置类
 * <p>
 * .
 *
 * @author mikoozhang[zhangliang2198@outlook.com]
 * @version 1.0.0
 */
@AutoConfiguration
public class BannerAutoConfiguration {

    @Bean
    public BannerApplicationRunner bannerApplicationRunner() {
        return new BannerApplicationRunner();
    }

}
