package com.divine.warehouse.service;

import com.divine.warehouse.domain.dto.ItemBrandDto;
import com.divine.common.mybatis.core.page.BasePage;
import com.divine.common.mybatis.core.page.PageInfoRes;
import com.divine.warehouse.domain.vo.ItemBrandVo;

import java.util.List;

/**
 * 物品品牌Service业务层处理
 *
 * @author zcc
 * @date 2024-07-30
 */
public interface ItemBrandService {


    /**
     * 查询物品品牌
     */
    ItemBrandVo queryById(Long id);

    /**
     * 查询物品品牌列表
     */
    PageInfoRes<ItemBrandVo> queryPageList(ItemBrandDto dto, BasePage basePage) ;

    /**
     * 查询物品品牌列表
     */
    List<ItemBrandVo> queryList(ItemBrandDto dto) ;

    /**
     * 新增物品品牌
     */
    void insertByBo(ItemBrandDto dto) ;

    /**
     * 修改物品品牌
     */
    void updateByBo(ItemBrandDto dto);

    /**
     * 批量删除物品品牌
     */
    void deleteById(Long id);

}
