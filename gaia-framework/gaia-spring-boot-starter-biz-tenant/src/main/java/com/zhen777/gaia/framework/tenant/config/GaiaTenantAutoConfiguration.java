package com.zhen777.gaia.framework.tenant.config;

import cn.hutool.core.annotation.AnnotationUtil;
import com.zhen777.gaia.framework.common.enums.WebFilterOrderEnum;
import com.zhen777.gaia.framework.mybatis.core.util.MyBatisUtils;
import com.zhen777.gaia.framework.quartz.core.handler.JobHandler;
import com.zhen777.gaia.framework.tenant.core.aop.TenantIgnoreAspect;
import com.zhen777.gaia.framework.tenant.core.db.TenantDatabaseInterceptor;
import com.zhen777.gaia.framework.tenant.core.job.TenantJob;
import com.zhen777.gaia.framework.tenant.core.job.TenantJobHandlerDecorator;
import com.zhen777.gaia.framework.tenant.core.mq.TenantRedisMessageInterceptor;
import com.zhen777.gaia.framework.tenant.core.redis.TenantRedisCacheManager;
import com.zhen777.gaia.framework.tenant.core.security.TenantSecurityWebFilter;
import com.zhen777.gaia.framework.tenant.core.service.TenantFrameworkService;
import com.zhen777.gaia.framework.tenant.core.service.TenantFrameworkServiceImpl;
import com.zhen777.gaia.framework.tenant.core.web.TenantContextWebFilter;
import com.zhen777.gaia.framework.web.config.WebProperties;
import com.zhen777.gaia.framework.web.core.handler.GlobalExceptionHandler;
import com.zhen777.gaia.module.system.api.tenant.TenantApi;
import com.baomidou.mybatisplus.extension.plugins.MybatisPlusInterceptor;
import com.baomidou.mybatisplus.extension.plugins.inner.TenantLineInnerInterceptor;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.cache.RedisCacheWriter;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.Objects;

@AutoConfiguration
@ConditionalOnProperty(prefix = "gaia.tenant", value = "enable", matchIfMissing = true) // ???????????? gaia.tenant.enable=false ???????????????
@EnableConfigurationProperties(TenantProperties.class)
public class GaiaTenantAutoConfiguration {

    @Bean
    public TenantFrameworkService tenantFrameworkService(TenantApi tenantApi) {
        return new TenantFrameworkServiceImpl(tenantApi);
    }

    // ========== AOP ==========

    @Bean
    public TenantIgnoreAspect tenantIgnoreAspect() {
        return new TenantIgnoreAspect();
    }

    // ========== DB ==========

    @Bean
    public TenantLineInnerInterceptor tenantLineInnerInterceptor(TenantProperties properties,
                                                                 MybatisPlusInterceptor interceptor) {
        TenantLineInnerInterceptor inner = new TenantLineInnerInterceptor(new TenantDatabaseInterceptor(properties));
        // ????????? interceptor ???
        // ????????????????????????????????????????????????????????????????????? MyBatis Plus ?????????
        MyBatisUtils.addInterceptor(interceptor, inner, 0);
        return inner;
    }

    // ========== WEB ==========

    @Bean
    public FilterRegistrationBean<TenantContextWebFilter> tenantContextWebFilter() {
        FilterRegistrationBean<TenantContextWebFilter> registrationBean = new FilterRegistrationBean<>();
        registrationBean.setFilter(new TenantContextWebFilter());
        registrationBean.setOrder(WebFilterOrderEnum.TENANT_CONTEXT_FILTER);
        return registrationBean;
    }

    // ========== Security ==========

    @Bean
    public FilterRegistrationBean<TenantSecurityWebFilter> tenantSecurityWebFilter(TenantProperties tenantProperties,
                                                                                   WebProperties webProperties,
                                                                                   GlobalExceptionHandler globalExceptionHandler,
                                                                                   TenantFrameworkService tenantFrameworkService) {
        FilterRegistrationBean<TenantSecurityWebFilter> registrationBean = new FilterRegistrationBean<>();
        registrationBean.setFilter(new TenantSecurityWebFilter(tenantProperties, webProperties,
                globalExceptionHandler, tenantFrameworkService));
        registrationBean.setOrder(WebFilterOrderEnum.TENANT_SECURITY_FILTER);
        return registrationBean;
    }

    // ========== MQ ==========

    @Bean
    public TenantRedisMessageInterceptor tenantRedisMessageInterceptor() {
        return new TenantRedisMessageInterceptor();
    }

    // ========== Job ==========

    @Bean
    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    public BeanPostProcessor jobHandlerBeanPostProcessor(TenantFrameworkService tenantFrameworkService) {
        return new BeanPostProcessor() {

            @Override
            public Object postProcessBeforeInitialization(Object bean, String beanName) throws BeansException {
                if (!(bean instanceof JobHandler)) {
                    return bean;
                }
                // ??? TenantJob ???????????????????????????????????????
                if (!AnnotationUtil.hasAnnotation(bean.getClass(), TenantJob.class)) {
                    return bean;
                }

                // ?????? TenantJobHandlerDecorator ??????
                return new TenantJobHandlerDecorator(tenantFrameworkService, (JobHandler) bean);
            }

        };
    }

    // ========== Redis ==========

    @Bean
    @Primary // ??????????????????tenantRedisCacheManager ?????? Bean
    public RedisCacheManager tenantRedisCacheManager(RedisTemplate<String, Object> redisTemplate,
                                                     RedisCacheConfiguration redisCacheConfiguration) {
        // ?????? RedisCacheWriter ??????
        RedisConnectionFactory connectionFactory = Objects.requireNonNull(redisTemplate.getConnectionFactory());
        RedisCacheWriter cacheWriter = RedisCacheWriter.nonLockingRedisCacheWriter(connectionFactory);
        // ?????? TenantRedisCacheManager ??????
        return new TenantRedisCacheManager(cacheWriter, redisCacheConfiguration);
    }

}
