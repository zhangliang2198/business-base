package com.zhen777.gaia.framework.common.util.object;

import com.zhen777.gaia.framework.common.pojo.PageParam;

/**
 * {@link com.zhen777.gaia.framework.common.pojo.PageParam} 工具类
 *
 * @author 芋道源码
 */
public class PageUtils {

    public static int getStart(PageParam pageParam) {
        return (pageParam.getPageNo() - 1) * pageParam.getPageSize();
    }

}
