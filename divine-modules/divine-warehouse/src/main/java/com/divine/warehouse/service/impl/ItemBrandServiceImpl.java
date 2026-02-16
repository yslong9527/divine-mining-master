package com.divine.warehouse.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.divine.common.core.exception.base.BusinessException;
import com.divine.warehouse.domain.dto.ItemBrandDto;
import com.divine.warehouse.domain.entity.Item;
import com.divine.warehouse.domain.entity.ItemBrand;
import com.divine.warehouse.domain.vo.ItemBrandVo;
import com.divine.warehouse.mapper.ItemBrandMapper;
import com.divine.warehouse.mapper.ItemMapper;
import com.divine.warehouse.service.ItemBrandService;
import com.divine.common.core.constant.HttpStatus;
import com.divine.common.core.utils.MapstructUtils;
import com.divine.common.mybatis.core.domain.BaseEntity;
import com.divine.common.mybatis.core.page.BasePage;
import com.divine.common.mybatis.core.page.PageInfoRes;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 物品品牌Service业务层处理
 *
 * @author yisl
 * @date 2024-07-30
 */
@RequiredArgsConstructor
@Service
public class ItemBrandServiceImpl implements ItemBrandService {

    private final ItemBrandMapper itemBrandMapper;
    private final ItemMapper itemMapper;

    /**
     * 查询物品品牌
     */
    @Override
    public ItemBrandVo queryById(Long id){
        return itemBrandMapper.selectVoById(id);
    }

    /**
     * 查询物品品牌列表
     */
    @Override
    public PageInfoRes<ItemBrandVo> queryPageList(ItemBrandDto dto, BasePage basePage) {
        LambdaQueryWrapper<ItemBrand> lqw = buildQueryWrapper(dto);
        Page<ItemBrandVo> result = itemBrandMapper.selectVoPage(basePage.build(), lqw);
        return PageInfoRes.build(result);
    }

    /**
     * 查询物品品牌列表
     */
    @Override
    public List<ItemBrandVo> queryList(ItemBrandDto dto) {
        LambdaQueryWrapper<ItemBrand> lqw = buildQueryWrapper(dto);
        return itemBrandMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<ItemBrand> buildQueryWrapper(ItemBrandDto dto) {
        Map<String, Object> params = dto.getParams();
        LambdaQueryWrapper<ItemBrand> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(dto.getBrandName()), ItemBrand::getBrandName, dto.getBrandName());
        lqw.orderByDesc(BaseEntity::getCreateTime);
        return lqw;
    }

    /**
     * 新增物品品牌
     */
    @Override
    public void insertByBo(ItemBrandDto dto) {
        ItemBrand add = MapstructUtils.convert(dto, ItemBrand.class);
        itemBrandMapper.insert(add);
    }

    /**
     * 修改物品品牌
     */
    @Override
    public void updateByBo(ItemBrandDto dto) {
        ItemBrand update = MapstructUtils.convert(dto, ItemBrand.class);
        itemBrandMapper.updateById(update);
    }

    /**
     * 批量删除物品品牌
     */
    @Override
    public void deleteById(Long id) {
        validateIdBeforeDelete(id);
        itemBrandMapper.deleteById(id);
    }

    private void validateIdBeforeDelete(Long id) {
        LambdaQueryWrapper<Item> itemLambdaQueryWrapper = Wrappers.lambdaQuery();
        itemLambdaQueryWrapper.eq(Item::getItemBrand, id);
        if (itemMapper.exists(itemLambdaQueryWrapper)) {
            throw new BusinessException("该品牌已有业务关联，无法删除！");
        }
    }
}
