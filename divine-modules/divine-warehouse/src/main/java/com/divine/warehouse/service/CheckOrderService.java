package com.divine.warehouse.service;

import com.divine.warehouse.domain.dto.CheckOrderDto;
import com.divine.warehouse.domain.vo.CheckOrderVo;
import com.divine.common.mybatis.core.page.BasePage;
import com.divine.common.mybatis.core.page.PageInfoRes;

import java.util.Collection;
import java.util.List;

/**
 * 库存盘点单据Service业务层处理
 *
 * @author yisl
 * @date 2024-08-13
 */
public interface CheckOrderService {

    /**
     * 查询库存盘点单据
     */
    CheckOrderVo queryById(Long id);

    /**
     * 查询库存盘点单据列表
     */
    PageInfoRes<CheckOrderVo> queryPageList(CheckOrderDto dto, BasePage basePage);

    /**
     * 查询库存盘点单据列表
     */
    List<CheckOrderVo> queryList(CheckOrderDto dto);

    /**
     * 新增库存盘点单据
     */
    void insertByBo(CheckOrderDto dto);

    /**
     * 修改库存盘点单据
     */
    void updateByBo(CheckOrderDto dto);

    void deleteById(Long id);

    /**
     * 批量删除库存盘点单据
     */
    void deleteByIds(Collection<Long> ids);

    /**
     * @param dto
     */
    void check(CheckOrderDto dto);

}
