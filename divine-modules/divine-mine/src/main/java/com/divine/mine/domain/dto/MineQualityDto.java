package com.divine.mine.domain.dto;

import com.divine.common.core.validate.AddGroup;
import com.divine.common.core.validate.EditGroup;
import com.divine.common.mybatis.core.domain.BaseEntity;
import com.divine.mine.domain.entity.MineQuality;
import lombok.Data;
import lombok.EqualsAndHashCode;
import jakarta.validation.constraints.*;
import io.github.linpeilie.annotations.AutoMapper;

import java.math.BigDecimal;

/**
 * 送货质量业务对象 mine_quality
 *
 * @author yisl
 * @date 2026-02-28
 */

@Data
@EqualsAndHashCode(callSuper = true)
@AutoMapper(target = MineQuality.class, reverseConvertGenerate = false)
public class MineQualityDto extends BaseEntity {

    /**
     * 主键id
     */
    @NotNull(message = "主键id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 质量编号
     */
    @NotBlank(message = "质量编号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String qualityNo;

    /**
     * weighting表id
     */
    @NotNull(message = "weighting表id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long weightingId;

    /**
     * 过磅编号
     */
    @NotBlank(message = "过磅编号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String weightingNo;

    /**
     * 送货单位id
     */
    @NotNull(message = "送货单位id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long shipMerchantId;

    /**
     * 水份
     */
    @NotNull(message = "水份不能为空", groups = { AddGroup.class, EditGroup.class })
    private BigDecimal moisture;

    /**
     * 氧化铜品位
     */
    @NotNull(message = "氧化铜品位不能为空", groups = { AddGroup.class, EditGroup.class })
    private BigDecimal cuoRatio;

    /**
     * 酸耗
     */
    @NotNull(message = "酸耗不能为空", groups = { AddGroup.class, EditGroup.class })
    private BigDecimal acidDemand;

    /**
     * 是否删除(0:未删除,1:已删除)
     */
    @NotNull(message = "是否删除(0:未删除,1:已删除)不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long isDel;


}
