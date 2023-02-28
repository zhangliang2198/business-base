package com.zhen777.gaia.framework.idempotent.config;

import com.zhen777.gaia.framework.idempotent.core.aop.IdempotentAspect;
import com.zhen777.gaia.framework.idempotent.core.keyresolver.impl.DefaultIdempotentKeyResolver;
import com.zhen777.gaia.framework.idempotent.core.keyresolver.impl.ExpressionIdempotentKeyResolver;
import com.zhen777.gaia.framework.idempotent.core.keyresolver.IdempotentKeyResolver;
import com.zhen777.gaia.framework.idempotent.core.redis.IdempotentRedisDAO;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import com.zhen777.gaia.framework.redis.config.GaiaRedisAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.core.StringRedisTemplate;

import java.util.List;

@AutoConfiguration(after = GaiaRedisAutoConfiguration.class)
public class GaiaIdempotentConfiguration {

    @Bean
    public IdempotentAspect idempotentAspect(List<IdempotentKeyResolver> keyResolvers, IdempotentRedisDAO idempotentRedisDAO) {
        return new IdempotentAspect(keyResolvers, idempotentRedisDAO);
    }

    @Bean
    public IdempotentRedisDAO idempotentRedisDAO(StringRedisTemplate stringRedisTemplate) {
        return new IdempotentRedisDAO(stringRedisTemplate);
    }

    // ========== 各种 IdempotentKeyResolver Bean ==========

    @Bean
    public DefaultIdempotentKeyResolver defaultIdempotentKeyResolver() {
        return new DefaultIdempotentKeyResolver();
    }

    @Bean
    public ExpressionIdempotentKeyResolver expressionIdempotentKeyResolver() {
        return new ExpressionIdempotentKeyResolver();
    }

}
