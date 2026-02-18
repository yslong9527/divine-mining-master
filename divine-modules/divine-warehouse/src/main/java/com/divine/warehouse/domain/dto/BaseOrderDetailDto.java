package com.divine.warehouse.domain.dto;

import com.divine.common.core.validate.AddGroup;
import com.divine.common.core.validate.EditGroup;
import com.divine.common.mybatis.core.domain.BaseEntity;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;
import java.util.List;

@Data
@EqualsAndHashCode(callSuper = true)
public class BaseOrderDetailDto extends BaseEntity {

    @Schema(description = "物品id")
    @NotNull(message = "物品id不能为空", groups = { EditGroup.class })
    private Long id;

    @Schema(description = "业务单id")
    @NotNull(message = "业务单id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long orderId;

    @Schema(description = "规格id")
    @NotNull(message = "规格id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long skuId;

    @Schema(description = "单价")
    private BigDecimal unitPrice;

    @Schema(description = "备注")
    private String remark;

    @Schema(description = "所属仓库")
    private Long warehouseId;

    @Schema(description = "货架")
    @NotBlank(message = "货架不能为空", groups = { AddGroup.class, EditGroup.class })
    private String storageShelf;

    @Schema(description = "数量")
    @NotNull(message = "数量不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long quantity;

    @Schema(description = "更新前数量")
    private Long beforeQuantity;

    @Schema(description = "文件地址")
    private List<String> fileList;

    @Schema(description = "更新前数量")
    private Long afterQuantity;

    @Schema(description = "图片地址")
    private String imgUrl;

}
