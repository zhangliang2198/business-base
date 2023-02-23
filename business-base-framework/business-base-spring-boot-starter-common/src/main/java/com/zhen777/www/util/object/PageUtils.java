package com.zhen777.www.util.object;


import com.zhen777.www.pojo.PageParam;

/**
 * 分頁工具类.
 *
 * @author mikoozhang[zhangliang2198@outlook.com]
 * @version 1.0.0
 */
public class PageUtils {

    public static int getStart(PageParam pageParam) {
        return (pageParam.getPageNo() - 1) * pageParam.getPageSize();
    }

}
