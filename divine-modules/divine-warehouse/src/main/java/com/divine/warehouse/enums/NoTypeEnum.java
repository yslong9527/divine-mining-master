package com.divine.warehouse.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum NoTypeEnum {

    RK("RK", "入库单号"),
    CK("CK", "出库单号"),
    YK("YK", "移库单号"),
    PK("PK", "盘库单号"),

    ;

    private final String code;
    private final String desc;
}
