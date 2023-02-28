package com.zhen777.gaia.module.infra.convert.job;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.infra.controller.admin.job.vo.job.JobCreateReqVO;
import com.zhen777.gaia.module.infra.controller.admin.job.vo.job.JobExcelVO;
import com.zhen777.gaia.module.infra.controller.admin.job.vo.job.JobRespVO;
import com.zhen777.gaia.module.infra.controller.admin.job.vo.job.JobUpdateReqVO;
import com.zhen777.gaia.module.infra.dal.dataobject.job.JobDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * 定时任务 Convert
 *
 * @author 芋道源码
 */
@Mapper
public interface JobConvert {

    JobConvert INSTANCE = Mappers.getMapper(JobConvert.class);

    JobDO convert(JobCreateReqVO bean);

    JobDO convert(JobUpdateReqVO bean);

    JobRespVO convert(JobDO bean);

    List<JobRespVO> convertList(List<JobDO> list);

    PageResult<JobRespVO> convertPage(PageResult<JobDO> page);

    List<JobExcelVO> convertList02(List<JobDO> list);

}
