package com.zhen777.gaia.framework.operatelog.config;

import com.zhen777.gaia.framework.operatelog.core.aop.OperateLogAspect;
import com.zhen777.gaia.framework.operatelog.core.service.OperateLogFrameworkService;
import com.zhen777.gaia.framework.operatelog.core.service.OperateLogFrameworkServiceImpl;
import com.zhen777.gaia.module.system.api.logger.OperateLogApi;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.context.annotation.Bean;

@AutoConfiguration
public class GaiaOperateLogAutoConfiguration {

    @Bean
    public OperateLogAspect operateLogAspect() {
        return new OperateLogAspect();
    }

    @Bean
    public OperateLogFrameworkService operateLogFrameworkService(OperateLogApi operateLogApi) {
        return new OperateLogFrameworkServiceImpl(operateLogApi);
    }

}
