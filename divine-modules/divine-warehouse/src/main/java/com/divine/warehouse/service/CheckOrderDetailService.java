package com.divine.warehouse.service;

import com.divine.warehouse.domain.dto.CheckOrderDetailDto;
import com.divine.warehouse.domain.entity.CheckOrderDetail;
import com.divine.warehouse.domain.vo.CheckOrderDetailVO;
import com.divine.common.mybatis.core.page.BasePage;
import com.divine.common.mybatis.core.page.PageInfoRes;

import java.util.Collection;
import java.util.List;

/**
 * 库存盘点单据详情Service业务层处理
 *
 * @author yisl
 * @date 2024-08-13
 */
public interface CheckOrderDetailService {


    /**
     * 查询库存盘点单据详情
     */
    CheckOrderDetailVO queryById(Long id);

    /**
     * 查询库存盘点单据详情列表
     */
    PageInfoRes<CheckOrderDetailVO> queryPageList(CheckOrderDetailDto dto, BasePage basePage);


    /**
     * 查询库存盘点单据详情列表
     */
    List<CheckOrderDetailVO> queryList(CheckOrderDetailDto dto);


    /**
     * 新增库存盘点单据详情
     */
    void insertByBo(CheckOrderDetailDto dto);

    /**
     * 修改库存盘点单据详情
     */
    void updateByBo(CheckOrderDetailDto dto);

    /**
     * 批量删除库存盘点单据详情
     */
    void deleteByIds(Collection<Long> ids);

    void saveDetails(List<CheckOrderDetail> list);

    List<CheckOrderDetailVO> queryByCheckOrderId(Long checkOrderId);
}
