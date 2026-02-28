package com.divine.mine.domain.dto;

import com.divine.common.core.validate.AddGroup;
import com.divine.common.core.validate.EditGroup;
import com.divine.common.mybatis.core.domain.BaseEntity;
import com.divine.mine.domain.entity.MineWeighting;
import lombok.Data;
import lombok.EqualsAndHashCode;
import jakarta.validation.constraints.*;
import io.github.linpeilie.annotations.AutoMapper;

import java.util.Date;

/**
 * 过磅记录业务对象 mine_weighting
 *
 * @author yisl
 * @date 2026-02-28
 */

@Data
@EqualsAndHashCode(callSuper = true)
@AutoMapper(target = MineWeighting.class, reverseConvertGenerate = false)
public class MineWeightingDto extends BaseEntity {

    /**
     * id
     */
    @NotNull(message = "id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 车牌号
     */
    @NotBlank(message = "车牌号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String carNumber;

    /**
     * 过磅单编号
     */
    @NotBlank(message = "过磅单编号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String weighingNo;

    /**
     * 商品名称
     */
    @NotBlank(message = "商品名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String goodsName;

    /**
     * 发货单位
     */
    @NotNull(message = "发货单位不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long shipMerchantId;

    /**
     * 发货日期
     */
    @NotNull(message = "发货日期不能为空", groups = { AddGroup.class, EditGroup.class })
    private Date shipTime;

    /**
     * 发货地址
     */
    @NotBlank(message = "发货地址不能为空", groups = { AddGroup.class, EditGroup.class })
    private String shipAddress;

    /**
     * 收货单位
     */
    @NotBlank(message = "收货单位不能为空", groups = { AddGroup.class, EditGroup.class })
    private String deliveryMerchant;

    /**
     * 收货日期
     */
    @NotNull(message = "收货日期不能为空", groups = { AddGroup.class, EditGroup.class })
    private Date deliveryTime;

    /**
     * 过磅状态(0:已过磅,1:已回磅)
     */
    @NotBlank(message = "过磅状态(0:已过磅,1:已回磅)不能为空", groups = { AddGroup.class, EditGroup.class })
    private String weighingStatus;

    /**
     * 总重
     */
    @NotNull(message = "总重不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long totalWeight;

    /**
     * 皮重
     */
    @NotNull(message = "皮重不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long tareWeight;

    /**
     * 净重
     */
    @NotNull(message = "净重不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long netWeight;

    /**
     * 备注
     */
    @NotBlank(message = "备注不能为空", groups = { AddGroup.class, EditGroup.class })
    private String remark;


}
