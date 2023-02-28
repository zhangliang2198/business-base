package com.zhen777.gaia.module.mp.service.tag;

import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.mp.controller.admin.tag.vo.MpTagCreateReqVO;
import com.zhen777.gaia.module.mp.controller.admin.tag.vo.MpTagPageReqVO;
import com.zhen777.gaia.module.mp.controller.admin.tag.vo.MpTagUpdateReqVO;
import com.zhen777.gaia.module.mp.dal.dataobject.tag.MpTagDO;

import javax.validation.Valid;
import java.util.List;

/**
 * 公众号标签 Service 接口
 *
 * @author fengdan
 */
public interface MpTagService {

    /**
     * 创建公众号标签
     *
     * @param createReqVO 创建标签信息
     * @return 标签编号
     */
    Long createTag(@Valid MpTagCreateReqVO createReqVO);

    /**
     * 更新公众号标签
     *
     * @param updateReqVO 更新标签信息
     */
    void updateTag(@Valid MpTagUpdateReqVO updateReqVO);

    /**
     * 删除公众号标签
     *
     * @param id    编号
     */
    void deleteTag(Long id);

    /**
     * 获得公众号标签分页
     *
     * @param pageReqVO 分页查询
     * @return 公众号标签分页
     */
    PageResult<MpTagDO> getTagPage(MpTagPageReqVO pageReqVO);

    List<MpTagDO> getTagList();

    /**
     * 同步公众号标签
     *
     * @param accountId 公众号账号的编号
     */
    void syncTag(Long accountId);

}
