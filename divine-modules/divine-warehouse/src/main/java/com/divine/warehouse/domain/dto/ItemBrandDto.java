package com.divine.warehouse.domain.dto;

import com.divine.warehouse.domain.entity.ItemBrand;
import com.divine.common.core.validate.AddGroup;
import com.divine.common.core.validate.EditGroup;
import com.divine.common.mybatis.core.domain.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import jakarta.validation.constraints.*;
import io.github.linpeilie.annotations.AutoMapper;


/**
 * 物品品牌业务对象 wms_item_brand
 *
 * @author yisl
 * @date 2024-07-30
 */

@Data
@EqualsAndHashCode(callSuper = true)
@AutoMapper(target = ItemBrand.class, reverseConvertGenerate = false)
public class ItemBrandDto extends BaseEntity {

    /**
     * id
     */
    @NotNull(message = "id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 品牌名称
     */
    @NotBlank(message = "品牌名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String brandName;


}
