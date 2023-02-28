package com.zhen777.gaia.module.promotion.convert.banner;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.promotion.controller.admin.banner.vo.BannerCreateReqVO;
import com.zhen777.gaia.module.promotion.controller.admin.banner.vo.BannerRespVO;
import com.zhen777.gaia.module.promotion.controller.admin.banner.vo.BannerUpdateReqVO;
import com.zhen777.gaia.module.promotion.dal.dataobject.banner.BannerDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

@Mapper
public interface BannerConvert {

    BannerConvert INSTANCE = Mappers.getMapper(BannerConvert.class);

    List<BannerRespVO> convertList(List<BannerDO> list);

    PageResult<BannerRespVO> convertPage(PageResult<BannerDO> pageResult);

    BannerRespVO convert(BannerDO banner);

    BannerDO convert(BannerCreateReqVO createReqVO);

    BannerDO convert(BannerUpdateReqVO updateReqVO);

}
