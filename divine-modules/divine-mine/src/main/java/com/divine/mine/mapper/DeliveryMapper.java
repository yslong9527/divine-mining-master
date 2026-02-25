package com.divine.mine.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;

import com.divine.mine.domain.dto.delivery.DeparturePageDTO;
import com.divine.mine.domain.dto.home.DateDTO;
import com.divine.mine.domain.entity.Delivery;
import com.divine.mine.domain.vo.delivery.DeliveryBatchPageVO;
import com.divine.mine.domain.vo.delivery.DeliveryCarPageVO;
import com.divine.mine.domain.vo.home.CartogramInfoVO;
import com.divine.mine.domain.vo.home.PieChartVO;
import com.divine.mine.export.DeliveryExportField;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Description: 送货记录持久层
 * @Author: yisl
 * @Date: 2025-11-21 11:05:10
 */
@Mapper
public interface DeliveryMapper extends BaseMapper<Delivery> {
    /**
     * 查询发车记录(按车辆)
     *
     * @param dto
     * @return
     */
    IPage<DeliveryCarPageVO> deliveryCarPage(IPage<DeliveryCarPageVO> page, @Param("dto") DeparturePageDTO dto);

    /**
     * 查询发车记录(按批次)
     *
     * @param dto
     * @return
     */
    IPage<DeliveryBatchPageVO> deliverBatchPage(IPage<DeliveryBatchPageVO> page, @Param("dto") DeparturePageDTO dto);

    /**
     * 统计所有工厂发车记录
     *
     * @param dto
     * @return
     */
    List<CartogramInfoVO> cartogram(@Param("dto") DateDTO dto);

    /**
     * 统计单个工厂发车记录
     *
     * @param dto
     * @return
     */
    PieChartVO pieChart(@Param("dto") DateDTO dto, @Param("companyId")String companyId);

    /**
     * 查询发车记录(按车辆)
     *
     * @param dto
     * @return
     */
    IPage<DeliveryExportField> selectExportList(IPage<DeliveryExportField> page, @Param("dto") DeparturePageDTO dto);
}
