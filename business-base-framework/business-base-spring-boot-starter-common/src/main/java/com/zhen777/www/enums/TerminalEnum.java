package com.zhen777.www.enums;

import com.zhen777.www.core.IntArrayValuable;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.util.Arrays;

/**
 * 终端的枚举
 *
 * @author mikoozhang
 */
@RequiredArgsConstructor
@Getter
public enum TerminalEnum implements IntArrayValuable {

    WECHAT_MINI_PROGRAM(10, "微信小程序"),
    WECHAT_WAP(11, "微信公众号"),
    H5(20, "H5 网页"),
    IOS(31, "苹果 App"),
    ANDROID(32, "安卓 App"),
    ;

    public static final int[] ARRAYS = Arrays.stream(values()).mapToInt(TerminalEnum::getTerminal).toArray();

    /**
     * 终端
     */
    private final Integer terminal;
    /**
     * 终端名
     */
    private final String name;

    @Override
    public int[] array() {
        return ARRAYS;
    }
}
