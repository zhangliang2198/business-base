package com.zhen777.gaia.module.system.convert.notice;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.system.controller.admin.notice.vo.NoticeCreateReqVO;
import com.zhen777.gaia.module.system.controller.admin.notice.vo.NoticeRespVO;
import com.zhen777.gaia.module.system.controller.admin.notice.vo.NoticeUpdateReqVO;
import com.zhen777.gaia.module.system.dal.dataobject.notice.NoticeDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface NoticeConvert {

    NoticeConvert INSTANCE = Mappers.getMapper(NoticeConvert.class);

    PageResult<NoticeRespVO> convertPage(PageResult<NoticeDO> page);

    NoticeRespVO convert(NoticeDO bean);

    NoticeDO convert(NoticeUpdateReqVO bean);

    NoticeDO convert(NoticeCreateReqVO bean);

}
