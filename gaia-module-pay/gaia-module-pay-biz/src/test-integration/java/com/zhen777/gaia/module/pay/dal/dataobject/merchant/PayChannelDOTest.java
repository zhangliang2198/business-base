package com.zhen777.gaia.module.pay.dal.dataobject.merchant;

import com.zhen777.gaia.framework.common.util.json.JsonUtils;
import com.zhen777.gaia.framework.pay.core.client.impl.wx.WXPayClientConfig;
import org.junit.jupiter.api.Test;

public class PayChannelDOTest {

    @Test
    public void testSerialization() {
        PayChannelDO payChannelDO = new PayChannelDO();
        // 创建配置
        WXPayClientConfig config = new WXPayClientConfig();
        config.setAppId("wx041349c6f39b268b");
        config.setMchId("1545083881");
        config.setApiVersion(WXPayClientConfig.API_VERSION_V2);
        config.setMchKey("0alL64UDQdlCwiKZ73ib7ypaIjMns06p");
        payChannelDO.setConfig(config);

        // 序列化
        String text = JsonUtils.toJsonString(payChannelDO);
        System.out.println(text);

        // 反序列化
        payChannelDO = JsonUtils.parseObject(text, PayChannelDO.class);
        System.out.println(payChannelDO.getConfig().getClass());
    }

}
