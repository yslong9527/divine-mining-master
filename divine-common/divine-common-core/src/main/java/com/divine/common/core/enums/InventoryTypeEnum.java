package com.divine.common.core.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * @Author: Yisl
 * @Description:
 * @Date: 2026/2/13 18:07
 */
@Getter
@AllArgsConstructor
public enum InventoryTypeEnum {

    RECEIPT(1, "RK", "入库单"),
    SHIPMENT(2, "CK", "出库单"),
    MOVEMENT(3, "YK", "移库单"),
    CHECK(4, "PK", "盘库单"),

    ;

    private final Integer type;
    private final String code;
    private final String desc;


}
