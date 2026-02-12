package com.divine.warehouse.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.divine.warehouse.domain.entity.Inventory;
import io.github.linpeilie.annotations.AutoMapper;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 库存视图对象 wms_inventory
 *
 * @author zcc
 * @date 2024-07-19
 */
@Data
@ExcelIgnoreUnannotated
@AutoMapper(target = Inventory.class)
public class InventoryVo implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @ExcelProperty(value = "id")
    @Schema(description = "id")
    private Long id;

    @ExcelProperty(value = "规格ID")
    @Schema(description = "规格ID")
    private Long skuId;

    @ExcelProperty(value = "所属仓库")
    @Schema(description = "所属仓库")
    private Long warehouseId;

    @ExcelProperty(value = "库存")
    @Schema(description = "库存")
    private BigDecimal quantity;

    @ExcelProperty(value = "备注")
    @Schema(description = "备注")
    private String remark;

    @Schema(description = "sku信息")
    private ItemSkuVo itemSku;

    @Schema(description = "物品信息")
    private ItemVo item;

}
