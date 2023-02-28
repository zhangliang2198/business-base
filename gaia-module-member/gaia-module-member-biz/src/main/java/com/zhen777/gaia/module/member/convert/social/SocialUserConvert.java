package com.zhen777.gaia.module.member.convert.social;

import com.zhen777.gaia.module.member.controller.app.social.vo.AppSocialUserBindReqVO;
import com.zhen777.gaia.module.member.controller.app.social.vo.AppSocialUserUnbindReqVO;
import com.zhen777.gaia.module.system.api.social.dto.SocialUserBindReqDTO;
import com.zhen777.gaia.module.system.api.social.dto.SocialUserUnbindReqDTO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface SocialUserConvert {

    SocialUserConvert INSTANCE = Mappers.getMapper(SocialUserConvert.class);

    SocialUserBindReqDTO convert(Long userId, Integer userType, AppSocialUserBindReqVO reqVO);

    SocialUserUnbindReqDTO convert(Long userId, Integer userType, AppSocialUserUnbindReqVO reqVO);

}
