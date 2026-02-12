package com.divine.warehouse.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum OptionTypeEnum {

    DELIVER_STATUS("test", "test"),

;

    private final String code;
    private final String desc;
}
