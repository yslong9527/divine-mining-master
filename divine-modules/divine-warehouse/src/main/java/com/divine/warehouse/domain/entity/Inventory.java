package com.divine.warehouse.domain.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.divine.common.mybatis.core.domain.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serial;
import java.math.BigDecimal;
import java.util.List;

/**
 * 库存对象 wms_inventory
 *
 * @author yisl
 * @date 2024-07-19
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("wms_inventory")
public class Inventory extends BaseEntity{

    @Serial
    private static final long serialVersionUID=1L;

    /**
     *
     */
    @TableId(value = "id")
    private Long id;

    /**
     * 规格ID
     */
    private Long skuId;
    /**
     * 所属仓库
     */
    private Long warehouseId;

    /**
     * 货架
     */
    private String storageShelf;

    /**
     * 库存
     */
    private Long quantity;

    /**
     * 备注
     */
    private String remark;

}
