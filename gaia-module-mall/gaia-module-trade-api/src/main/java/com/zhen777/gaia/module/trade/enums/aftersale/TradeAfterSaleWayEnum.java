package com.zhen777.gaia.module.trade.enums.aftersale;

import com.zhen777.gaia.framework.common.core.IntArrayValuable;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.util.Arrays;

/**
 * 交易售后 - 方式
 *
 * @author Sin
 */
@RequiredArgsConstructor
@Getter
public enum TradeAfterSaleWayEnum implements IntArrayValuable {

    REFUND(10, "仅退款"),
    RETURN_AND_REFUND(20, "退货退款");

    public static final int[] ARRAYS = Arrays.stream(values()).mapToInt(TradeAfterSaleWayEnum::getWay).toArray();

    /**
     * 方式
     */
    private final Integer way;
    /**
     * 方式名
     */
    private final String name;

    @Override
    public int[] array() {
        return ARRAYS;
    }

}
