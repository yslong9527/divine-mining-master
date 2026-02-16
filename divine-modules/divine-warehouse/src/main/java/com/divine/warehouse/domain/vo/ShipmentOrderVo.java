package com.divine.warehouse.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.divine.warehouse.domain.entity.ShipmentOrder;
import io.github.linpeilie.annotations.AutoMapper;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 出库单视图对象 wms_shipment_order
 *
 * @author yisl
 * @date 2024-08-01
 */
@Data
@EqualsAndHashCode(callSuper = true)
@ExcelIgnoreUnannotated
@AutoMapper(target = ShipmentOrder.class)
public class ShipmentOrderVo extends BaseOrderVo<ShipmentOrderDetailVO>{

    /**
     * 入库类型
     */
    @ExcelProperty(value = "操作类型")
    private Long optType;

    /**
     * 领用人
     */
    @ExcelProperty(value = "领用人")
    private String recipient;

    /**
     * 订单号
     */
    @ExcelProperty(value = "业务订单号")
    private String bizOrderNo;
}
