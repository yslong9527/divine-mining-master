package com.divine.warehouse.service;

import com.divine.warehouse.domain.dto.WarehouseDto;
import com.divine.warehouse.domain.vo.WarehouseVo;
import com.divine.common.mybatis.core.page.BasePage;
import com.divine.common.mybatis.core.page.PageInfoRes;

import java.util.Collection;
import java.util.List;

/**
 * 仓库Service业务层处理
 *
 * @author zcc
 * @date 2024-07-16
 */
public interface WarehouseService {

    /**
     * 查询仓库
     */
    WarehouseVo queryById(Long id);

    /**
     * 查询仓库列表
     */
    PageInfoRes<WarehouseVo> queryPageList(WarehouseDto dto, BasePage basePage);

    /**
     * 查询仓库列表
     */
    List<WarehouseVo> queryList(WarehouseDto dto);

    /**
     * 新增仓库
     */
    void insertByBo(WarehouseDto dto) ;

    /**
     * 修改仓库
     */
    void updateByBo(WarehouseDto dto) ;

    /**
     * 删除仓库
     */
    void deleteById(Long id) ;

    /**
     * 批量删除仓库
     */
    void deleteByIds(Collection<Long> ids);

    void updateSort(List<WarehouseDto> tree);
}
