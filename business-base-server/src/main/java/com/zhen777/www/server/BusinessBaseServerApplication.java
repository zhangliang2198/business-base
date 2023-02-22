package com.zhen777.www.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 项目的启动类
 *
 * 如果你碰到启动的问题，请认真阅读 https://doc.iocoder.cn/quick-start/ 文章
 * 如果你碰到启动的问题，请认真阅读 https://doc.iocoder.cn/quick-start/ 文章
 * 如果你碰到启动的问题，请认真阅读 https://doc.iocoder.cn/quick-start/ 文章
 *
 * @author 芋道源码
 */
@SuppressWarnings("SpringComponentScan") // 忽略 IDEA 无法识别 ${business-base.info.base-package}
@SpringBootApplication(scanBasePackages = {"${business-base.info.base-package}.server", "${business-base.info.base-package}.module"})
public class BusinessBaseServerApplication {

    public static void main(String[] args) {
        // 如果你碰到启动的问题，请认真阅读 https://www.zhen777.com/quick-start/ 文章
        // 如果你碰到启动的问题，请认真阅读 https://www.zhen777.com/quick-start/ 文章
        // 如果你碰到启动的问题，请认真阅读 https://www.zhen777.com/quick-start/ 文章

        SpringApplication.run(BusinessBaseServerApplication.class, args);
//        new SpringApplicationBuilder(BusinessBaseServerApplication.class)
//                .applicationStartup(new BufferingApplicationStartup(20480))
//                .run(args);

        // 如果你碰到启动的问题，请认真阅读 https://www.zhen777.com/quick-start/ 文章
        // 如果你碰到启动的问题，请认真阅读 https://www.zhen777.com/quick-start/ 文章
        // 如果你碰到启动的问题，请认真阅读 https://www.zhen777.com/quick-start/ 文章
    }

}
