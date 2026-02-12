package com.divine.warehouse.service;

import com.divine.warehouse.domain.dto.ItemCategoryDto;
import com.divine.common.mybatis.core.page.BasePage;
import com.divine.common.mybatis.core.page.PageInfoRes;
import com.divine.warehouse.domain.vo.ItemCategoryVo;
import com.divine.warehouse.domain.vo.ItemTypeTreeSelectVo;

import java.util.List;

public interface ItemCategoryService {

    /**
     * 查询物料类型
     */
    ItemCategoryVo queryById(Long id);

    /**
     * 查询物料类型列表
     */
    PageInfoRes<ItemCategoryVo> queryPageList(ItemCategoryDto dto, BasePage basePage);

    /**
     * 查询物料类型列表
     */
    List<ItemCategoryVo> queryList(ItemCategoryDto dto);


    /**
     * 新增物料类型
     */
    void insertByBo(ItemCategoryDto dto);

    /**
     * 修改物料类型
     */
    void updateByBo(ItemCategoryDto dto);

    /**
     * 批量删除物料类型
     */
    void deleteByIds(List<Long> ids);

    /**
     * @param itemTypes
     * @return
     */
    List<ItemTypeTreeSelectVo> buildItemTypeTreeSelect(List<ItemCategoryVo> itemTypes);

    void updateOrderNum(List<ItemTypeTreeSelectVo> tree);
}
