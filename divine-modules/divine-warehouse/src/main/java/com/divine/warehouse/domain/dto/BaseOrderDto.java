package com.divine.warehouse.domain.dto;

import com.divine.common.core.validate.EditGroup;
import com.divine.common.mybatis.core.domain.BaseEntity;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;
import java.util.List;

@EqualsAndHashCode(callSuper = true)
@Data
public class BaseOrderDto<T extends BaseOrderDetailDto> extends BaseEntity {

    @Schema(description = "id")
    @NotNull(message = "id不能为空", groups = { EditGroup.class })
    private Long id;

    @Schema(description = "业务单号")
    @NotBlank(message = "业务单号不能为空", groups = { EditGroup.class })
    private String businessNo;

    @Schema(description = "总数")
    private BigDecimal totalQuantity;

    @Schema(description = "总金额")
    private BigDecimal totalPrice;

    @Schema(description = "备注")
    private String remark;

    @Schema(description = "物品信息")
    @NotEmpty(message = "请先选择物品")
    private List<T> details;
}
