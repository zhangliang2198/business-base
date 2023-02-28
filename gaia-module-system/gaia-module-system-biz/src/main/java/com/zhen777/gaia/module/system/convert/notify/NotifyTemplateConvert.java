package com.zhen777.gaia.module.system.convert.notify;

import java.util.*;

import com.zhen777.gaia.framework.common.pojo.PageResult;

import com.zhen777.gaia.module.system.controller.admin.notify.vo.template.NotifyTemplateCreateReqVO;
import com.zhen777.gaia.module.system.controller.admin.notify.vo.template.NotifyTemplateRespVO;
import com.zhen777.gaia.module.system.controller.admin.notify.vo.template.NotifyTemplateUpdateReqVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import com.zhen777.gaia.module.system.dal.dataobject.notify.NotifyTemplateDO;

/**
 * 站内信模版 Convert
 *
 * @author xrcoder
 */
@Mapper
public interface NotifyTemplateConvert {

    NotifyTemplateConvert INSTANCE = Mappers.getMapper(NotifyTemplateConvert.class);

    NotifyTemplateDO convert(NotifyTemplateCreateReqVO bean);

    NotifyTemplateDO convert(NotifyTemplateUpdateReqVO bean);

    NotifyTemplateRespVO convert(NotifyTemplateDO bean);

    List<NotifyTemplateRespVO> convertList(List<NotifyTemplateDO> list);

    PageResult<NotifyTemplateRespVO> convertPage(PageResult<NotifyTemplateDO> page);

}
