package com.divine.warehouse.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.divine.common.core.exception.base.BusinessException;
import com.divine.warehouse.domain.dto.CheckOrderDetailDto;
import com.divine.warehouse.domain.dto.CheckOrderDto;
import com.divine.warehouse.domain.entity.CheckOrder;
import com.divine.warehouse.domain.entity.CheckOrderDetail;
import com.divine.warehouse.domain.vo.CheckOrderVo;
import com.divine.warehouse.mapper.CheckOrderMapper;
import com.divine.warehouse.service.CheckOrderDetailService;
import com.divine.warehouse.service.CheckOrderService;
import com.divine.warehouse.service.InventoryHistoryService;
import com.divine.warehouse.service.InventoryService;
import com.divine.common.core.constant.ServiceConstants;
import com.divine.common.core.utils.MapstructUtils;
import com.divine.common.core.utils.StringUtils;
import com.divine.common.mybatis.core.domain.BaseEntity;
import com.divine.common.mybatis.core.page.BasePage;
import com.divine.common.mybatis.core.page.PageInfoRes;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.SerializationUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

/**
 * 库存盘点单据Service业务层处理
 *
 * @author zcc
 * @date 2024-08-13
 */
@RequiredArgsConstructor
@Service
public class CheckOrderServiceImpl implements CheckOrderService {

    private final CheckOrderMapper checkOrderMapper;
    private final CheckOrderDetailService checkOrderDetailService;
    private final InventoryService inventoryService;
    private final InventoryHistoryService inventoryHistoryService;

    /**
     * 查询库存盘点单据
     */
    @Override
    public CheckOrderVo queryById(Long id){
        CheckOrderVo checkOrderVo = checkOrderMapper.selectVoById(id);
        if (checkOrderVo == null) {
            throw new com.divine.common.core.exception.base.BusinessException("盘库单不存在");
        }
        checkOrderVo.setDetails(checkOrderDetailService.queryByCheckOrderId(id));
        return checkOrderVo;
    }

    /**
     * 查询库存盘点单据列表
     */
    @Override
    public PageInfoRes<CheckOrderVo> queryPageList(CheckOrderDto dto, BasePage basePage) {
        LambdaQueryWrapper<CheckOrder> lqw = buildQueryWrapper(dto);
        Page<CheckOrderVo> result = checkOrderMapper.selectVoPage(basePage.build(), lqw);
        return PageInfoRes.build(result);
    }

    /**
     * 查询库存盘点单据列表
     */
    @Override
    public List<CheckOrderVo> queryList(CheckOrderDto dto) {
        LambdaQueryWrapper<CheckOrder> lqw = buildQueryWrapper(dto);
        return checkOrderMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<CheckOrder> buildQueryWrapper(CheckOrderDto dto) {
        LambdaQueryWrapper<CheckOrder> lqw = Wrappers.lambdaQuery();
        lqw.eq(StringUtils.isNotBlank(dto.getOrderNo()), CheckOrder::getOrderNo, dto.getOrderNo());
        lqw.eq(dto.getOrderStatus() != null, CheckOrder::getOrderStatus, dto.getOrderStatus());
        lqw.eq(dto.getTotalQuantity() != null, CheckOrder::getTotalQuantity, dto.getTotalQuantity());
        lqw.eq(dto.getWarehouseId() != null, CheckOrder::getWarehouseId, dto.getWarehouseId());
        lqw.orderByDesc(BaseEntity::getCreateTime);
        return lqw;
    }

    /**
     * 新增库存盘点单据
     */
    @Override
    @Transactional
    public void insertByBo(CheckOrderDto dto) {
        // 校验盘库单号唯一性
        validateCheckOrderNo(dto.getOrderNo());
        // 创建盘库单
        CheckOrder add = MapstructUtils.convert(dto, CheckOrder.class);
        checkOrderMapper.insert(add);
        // 创建盘库单明细
        List<CheckOrderDetail> addDetailList = MapstructUtils.convert(dto.getDetails(), CheckOrderDetail.class);
        addDetailList.forEach(it -> it.setCheckId(add.getId()));
        checkOrderDetailService.saveDetails(addDetailList);
    }

    private void validateCheckOrderNo(String checkOrderNo) {
        LambdaQueryWrapper<CheckOrder> lambdaQueryWrapper = Wrappers.lambdaQuery();
        lambdaQueryWrapper.eq(CheckOrder::getOrderNo, checkOrderNo);
        if (checkOrderMapper.exists(lambdaQueryWrapper)) {
            throw new com.divine.common.core.exception.base.BusinessException("盘库单号重复，请手动修改");
        }
    }

    /**
     * 修改库存盘点单据
     */
    @Override
    @Transactional
    public void updateByBo(CheckOrderDto dto) {
        // 更新盘库单
        CheckOrder update = MapstructUtils.convert(dto, CheckOrder.class);
        checkOrderMapper.updateById(update);
        // 保存盘库单明细
        List<CheckOrderDetail> detailList = MapstructUtils.convert(dto.getDetails(), CheckOrderDetail.class);
        detailList.forEach(it -> it.setCheckId(dto.getId()));
        checkOrderDetailService.saveDetails(detailList);
    }

    @Override
    public void deleteById(Long id) {
        validateIdBeforeDelete(id);
        checkOrderMapper.deleteById(id);
    }

    private void validateIdBeforeDelete(Long id) {
        CheckOrderVo checkOrderVo = queryById(id);
        if (checkOrderVo == null) {
            throw new com.divine.common.core.exception.base.BusinessException("盘库单不存在");
        }
        if (ServiceConstants.CheckOrderStatus.FINISH.equals(checkOrderVo.getOrderStatus())) {
            throw new BusinessException("盘库单【" + checkOrderVo.getOrderNo() + "】已盘库完成，无法删除！");
        }
    }

    /**
     * 批量删除库存盘点单据
     */
    @Override
    public void deleteByIds(Collection<Long> ids) {
        checkOrderMapper.deleteBatchIds(ids);
    }

    /**
     * @param dto
     */
    @Override
    @Transactional
    public void check(CheckOrderDto dto) {
        List<CheckOrderDetailDto> details = dto.getDetails();
        // 保存盘库单 check order
        if (Objects.isNull(dto.getId())) {
            insertByBo(dto);
        } else {
            updateByBo(dto);
        }
        // 保存库存 inventory
        inventoryService.updateInventory(details);
        // 新增库存记录 inventory history
        CheckOrderDto filterBo = this.filterCheckOrderDetail(dto);
        inventoryHistoryService.saveInventoryHistory(filterBo, ServiceConstants.InventoryHistoryOrderType.CHECK, true);
    }

    private CheckOrderDto filterCheckOrderDetail(CheckOrderDto dto) {
        CheckOrderDto filterBo = SerializationUtils.clone(dto);
        List<CheckOrderDetailDto> details = filterBo.getDetails().stream().filter(detail -> {
            BigDecimal result = detail.getCheckQuantity().subtract(detail.getQuantity());
            return result.signum() != 0;
        }).map(detail->{
            BigDecimal result = detail.getCheckQuantity().subtract(detail.getQuantity());
            detail.setBeforeQuantity(detail.getQuantity());
            detail.setAfterQuantity(detail.getCheckQuantity());
            detail.setQuantity(result);
            return detail;
        }).toList();
        filterBo.setDetails(details);
        return filterBo;
    }
}
