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
public enum InventoryStatusEnum {

    INVALID (-1,"已作废"),
    PENDING (0,"未入库/出库/移库/盘库"),
    FINISH (1,"已入库/出库/移库/盘库"),

    ;
    private final Integer code;
    private final String desc;



}
