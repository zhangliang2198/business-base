package com.zhen777.gaia.module.bpm.convert.definition;

import com.zhen777.gaia.module.bpm.controller.admin.definition.vo.form.BpmFormCreateReqVO;
import com.zhen777.gaia.module.bpm.controller.admin.definition.vo.form.BpmFormRespVO;
import com.zhen777.gaia.module.bpm.controller.admin.definition.vo.form.BpmFormSimpleRespVO;
import com.zhen777.gaia.module.bpm.controller.admin.definition.vo.form.BpmFormUpdateReqVO;
import com.zhen777.gaia.module.bpm.dal.dataobject.definition.BpmFormDO;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * 动态表单 Convert
 *
 * @author 芋艿
 */
@Mapper
public interface BpmFormConvert {

    BpmFormConvert INSTANCE = Mappers.getMapper(BpmFormConvert.class);

    BpmFormDO convert(BpmFormCreateReqVO bean);

    BpmFormDO convert(BpmFormUpdateReqVO bean);

    BpmFormRespVO convert(BpmFormDO bean);

    List<BpmFormSimpleRespVO> convertList2(List<BpmFormDO> list);

    PageResult<BpmFormRespVO> convertPage(PageResult<BpmFormDO> page);

}
