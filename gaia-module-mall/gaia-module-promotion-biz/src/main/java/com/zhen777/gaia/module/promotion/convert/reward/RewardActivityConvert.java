package com.zhen777.gaia.module.promotion.convert.reward;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.promotion.controller.admin.reward.vo.RewardActivityCreateReqVO;
import com.zhen777.gaia.module.promotion.controller.admin.reward.vo.RewardActivityRespVO;
import com.zhen777.gaia.module.promotion.controller.admin.reward.vo.RewardActivityUpdateReqVO;
import com.zhen777.gaia.module.promotion.dal.dataobject.reward.RewardActivityDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * 满减送活动 Convert
 *
 * @author 芋道源码
 */
@Mapper
public interface RewardActivityConvert {

    RewardActivityConvert INSTANCE = Mappers.getMapper(RewardActivityConvert.class);

    RewardActivityDO convert(RewardActivityCreateReqVO bean);

    RewardActivityDO convert(RewardActivityUpdateReqVO bean);

    RewardActivityRespVO convert(RewardActivityDO bean);

    PageResult<RewardActivityRespVO> convertPage(PageResult<RewardActivityDO> page);

}
