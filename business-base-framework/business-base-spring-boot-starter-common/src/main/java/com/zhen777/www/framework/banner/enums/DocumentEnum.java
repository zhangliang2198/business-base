package com.zhen777.www.framework.banner.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 文档地址
 *
 * @author mikoozhang
 */
@Getter
@AllArgsConstructor
public enum DocumentEnum {

    /**
     * 复述,安装
     */
    REDIS_INSTALL("https://www.wolai.com/e3t56LnvQPGpTzUTZT9sey", "Redis 安装文档"),
    TENANT("https://www.wolai.com/9Ad5VuHTTnPDgvEVGCFuUo", "SaaS 多租户文档");

    private final String url;
    private final String memo;

}
