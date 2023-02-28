package com.zhen777.gaia.module.mp.convert.user;

import cn.hutool.core.date.LocalDateTimeUtil;
import com.zhen777.gaia.framework.common.enums.CommonStatusEnum;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.common.util.collection.CollectionUtils;
import com.zhen777.gaia.module.mp.controller.admin.user.vo.MpUserRespVO;
import com.zhen777.gaia.module.mp.controller.admin.user.vo.MpUserUpdateReqVO;
import com.zhen777.gaia.module.mp.dal.dataobject.account.MpAccountDO;
import com.zhen777.gaia.module.mp.dal.dataobject.user.MpUserDO;
import me.chanjar.weixin.mp.bean.result.WxMpUser;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

import java.util.List;

@Mapper
public interface MpUserConvert {

    MpUserConvert INSTANCE = Mappers.getMapper(MpUserConvert.class);

    MpUserRespVO convert(MpUserDO bean);

    List<MpUserRespVO> convertList(List<MpUserDO> list);

    PageResult<MpUserRespVO> convertPage(PageResult<MpUserDO> page);

    @Mappings(value = {
            @Mapping(source = "openId", target = "openid"),
            @Mapping(source = "headImgUrl", target = "headImageUrl"),
            @Mapping(target = "subscribeTime", ignore = true), // 单独转换
    })
    MpUserDO convert(WxMpUser wxMpUser);

    default MpUserDO convert(MpAccountDO account, WxMpUser wxMpUser) {
        MpUserDO user = convert(wxMpUser);
        user.setSubscribeStatus(wxMpUser.getSubscribe() ? CommonStatusEnum.ENABLE.getStatus()
                : CommonStatusEnum.DISABLE.getStatus());
        user.setSubscribeTime(LocalDateTimeUtil.of(wxMpUser.getSubscribeTime() * 1000L));
        if (account != null) {
            user.setAccountId(account.getId());
            user.setAppId(account.getAppId());
        }
        return user;
    }

    default List<MpUserDO> convertList(MpAccountDO account, List<WxMpUser> wxUsers) {
        return CollectionUtils.convertList(wxUsers, wxUser -> convert(account, wxUser));
    }

    MpUserDO convert(MpUserUpdateReqVO bean);

}
