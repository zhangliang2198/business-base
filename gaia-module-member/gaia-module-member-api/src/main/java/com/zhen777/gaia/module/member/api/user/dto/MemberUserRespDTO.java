package com.zhen777.gaia.module.member.api.user.dto;

import com.zhen777.gaia.framework.common.enums.CommonStatusEnum;
import lombok.Data;

/**
 * 用户信息 Response DTO
 *
 * @author 芋道源码
 */
@Data
public class MemberUserRespDTO {

    /**
     * 用户ID
     */
    private Long id;
    /**
     * 用户昵称
     */
    private String nickname;
    /**
     * 帐号状态
     *
     * 枚举 {@link CommonStatusEnum}
     */
    private Integer status;

    /**
     * 手机
     */
    private String mobile;

}
