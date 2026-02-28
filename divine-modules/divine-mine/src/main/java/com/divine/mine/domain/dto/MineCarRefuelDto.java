package com.divine.mine.domain.dto;

import com.divine.common.core.validate.AddGroup;
import com.divine.common.core.validate.EditGroup;
import com.divine.common.mybatis.core.domain.BaseEntity;
import com.divine.mine.domain.entity.MineCarRefuel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import jakarta.validation.constraints.*;
import io.github.linpeilie.annotations.AutoMapper;


/**
 * 车辆加油记录业务对象 mine_car_refuel
 *
 * @author yisl
 * @date 2026-02-28
 */

@Data
@EqualsAndHashCode(callSuper = true)
@AutoMapper(target = MineCarRefuel.class, reverseConvertGenerate = false)
public class MineCarRefuelDto extends BaseEntity {

    /**
     * 主键id
     */
    @NotNull(message = "主键id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 车辆id
     */
    @NotNull(message = "车辆id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long carId;

    /**
     * 车牌号
     */
    @NotBlank(message = "车牌号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String carNumber;

    /**
     * 车辆编号
     */
    @NotBlank(message = "车辆编号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String carNo;

    /**
     * 是否外来车辆(0:否,1:是)
     */
    @NotNull(message = "是否外来车辆(0:否,1:是)不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long isExternal;

    /**
     * 加油时里程表(km)
     */
    @NotNull(message = "加油时里程表(km)不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long odometer;

    /**
     * 加油量(L)
     */
    @NotNull(message = "加油量(L)不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long litre;

    /**
     * 加油类型(0:柴油,1:汽油)
     */
    @NotBlank(message = "加油类型(0:柴油,1:汽油)不能为空", groups = { AddGroup.class, EditGroup.class })
    private String refuelType;

    /**
     * 备注
     */
    @NotBlank(message = "备注不能为空", groups = { AddGroup.class, EditGroup.class })
    private String remark;

    /**
     * 是否删除(0:未删除,1:已删除)
     */
    @NotNull(message = "是否删除(0:未删除,1:已删除)不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long isDel;


}
