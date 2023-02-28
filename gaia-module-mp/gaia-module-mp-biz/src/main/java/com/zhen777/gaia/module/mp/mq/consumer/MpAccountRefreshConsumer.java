package com.zhen777.gaia.module.mp.mq.consumer;

import com.zhen777.gaia.framework.mq.core.pubsub.AbstractChannelMessageListener;
import com.zhen777.gaia.module.mp.mq.message.MpAccountRefreshMessage;
import com.zhen777.gaia.module.mp.service.account.MpAccountService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 针对 {@link MpAccountRefreshMessage} 的消费者
 *
 * @author 芋道源码
 */
@Component
@Slf4j
public class MpAccountRefreshConsumer extends AbstractChannelMessageListener<MpAccountRefreshMessage> {

    @Resource
    private MpAccountService mpAccountService;

    @Override
    public void onMessage(MpAccountRefreshMessage message) {
        log.info("[onMessage][收到 Account 刷新消息]");
        mpAccountService.initLocalCache();
    }

}
