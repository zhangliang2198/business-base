package com.zhen777.gaia.module.promotion.service.banner;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.promotion.controller.admin.banner.vo.BannerCreateReqVO;
import com.zhen777.gaia.module.promotion.controller.admin.banner.vo.BannerPageReqVO;
import com.zhen777.gaia.module.promotion.controller.admin.banner.vo.BannerUpdateReqVO;
import com.zhen777.gaia.module.promotion.convert.banner.BannerConvert;
import com.zhen777.gaia.module.promotion.dal.dataobject.banner.BannerDO;
import com.zhen777.gaia.module.promotion.dal.mysql.banner.BannerMapper;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import java.util.List;

import static com.zhen777.gaia.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.zhen777.gaia.module.promotion.enums.ErrorCodeConstants.BANNER_NOT_EXISTS;

/**
 * 首页 banner 实现类
 *
 * @author xia
 */
@Service
@Validated
public class BannerServiceImpl implements BannerService {

    @Resource
    private BannerMapper bannerMapper;

    @Override
    public Long createBanner(BannerCreateReqVO createReqVO) {
        // 插入
        BannerDO banner = BannerConvert.INSTANCE.convert(createReqVO);
        bannerMapper.insert(banner);
        // 返回
        return banner.getId();
    }

    @Override
    public void updateBanner(BannerUpdateReqVO updateReqVO) {
        // 校验存在
        this.validateBannerExists(updateReqVO.getId());
        // 更新
        BannerDO updateObj = BannerConvert.INSTANCE.convert(updateReqVO);
        bannerMapper.updateById(updateObj);
    }

    @Override
    public void deleteBanner(Long id) {
        // 校验存在
        this.validateBannerExists(id);
        // 删除
        bannerMapper.deleteById(id);
    }

    private void validateBannerExists(Long id) {
        if (bannerMapper.selectById(id) == null) {
            throw exception(BANNER_NOT_EXISTS);
        }
    }

    @Override
    public BannerDO getBanner(Long id) {
        return bannerMapper.selectById(id);
    }

    @Override
    public List<BannerDO> getBannerList() {
        return bannerMapper.selectList();
    }

    @Override
    public PageResult<BannerDO> getBannerPage(BannerPageReqVO pageReqVO) {
        return bannerMapper.selectPage(pageReqVO);
    }

}
