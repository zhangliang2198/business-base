package com.zhen777.gaia.module.system.dal.mysql.mail;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.mybatis.core.mapper.BaseMapperX;
import com.zhen777.gaia.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.zhen777.gaia.framework.mybatis.core.query.QueryWrapperX;
import com.zhen777.gaia.module.system.controller.admin.mail.vo.template.MailTemplatePageReqVO;
import com.zhen777.gaia.module.system.dal.dataobject.mail.MailTemplateDO;
import com.zhen777.gaia.module.system.dal.dataobject.sms.SmsTemplateDO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.Date;

@Mapper
public interface MailTemplateMapper extends BaseMapperX<MailTemplateDO> {

    default PageResult<MailTemplateDO> selectPage(MailTemplatePageReqVO pageReqVO){
        return selectPage(pageReqVO , new LambdaQueryWrapperX<MailTemplateDO>()
                .eqIfPresent(MailTemplateDO::getStatus, pageReqVO.getStatus())
                .likeIfPresent(MailTemplateDO::getCode, pageReqVO.getCode())
                .likeIfPresent(MailTemplateDO::getName, pageReqVO.getName())
                .eqIfPresent(MailTemplateDO::getAccountId, pageReqVO.getAccountId())
                .betweenIfPresent(MailTemplateDO::getCreateTime, pageReqVO.getCreateTime()));
    }

    default Long selectCountByAccountId(Long accountId) {
        return selectCount(MailTemplateDO::getAccountId, accountId);
    }

    default MailTemplateDO selectByCode(String code) {
        return selectOne(MailTemplateDO::getCode, code);
    }

}
