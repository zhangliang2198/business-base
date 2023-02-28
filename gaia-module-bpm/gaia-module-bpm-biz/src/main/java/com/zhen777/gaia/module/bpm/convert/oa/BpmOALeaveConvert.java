package com.zhen777.gaia.module.bpm.convert.oa;

import com.zhen777.gaia.module.bpm.controller.admin.oa.vo.BpmOALeaveCreateReqVO;
import com.zhen777.gaia.module.bpm.controller.admin.oa.vo.BpmOALeaveRespVO;
import com.zhen777.gaia.module.bpm.dal.dataobject.oa.BpmOALeaveDO;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * 请假申请 Convert
 *
 * @author 芋艿
 */
@Mapper
public interface BpmOALeaveConvert {

    BpmOALeaveConvert INSTANCE = Mappers.getMapper(BpmOALeaveConvert.class);

    BpmOALeaveDO convert(BpmOALeaveCreateReqVO bean);

    BpmOALeaveRespVO convert(BpmOALeaveDO bean);

    List<BpmOALeaveRespVO> convertList(List<BpmOALeaveDO> list);

    PageResult<BpmOALeaveRespVO> convertPage(PageResult<BpmOALeaveDO> page);

}
