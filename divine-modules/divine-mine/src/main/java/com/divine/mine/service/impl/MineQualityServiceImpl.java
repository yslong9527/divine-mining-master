package com.divine.mine.service.impl;

import com.divine.common.core.utils.MapstructUtils;
import com.divine.common.mybatis.core.page.PageInfoRes;
import com.divine.common.mybatis.core.page.BasePage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.divine.mine.domain.dto.MineQualityDto;
import com.divine.mine.domain.entity.MineQuality;
import com.divine.mine.domain.vo.MineQualityVo;
import com.divine.mine.service.MineQualityService;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.divine.mine.mapper.MineQualityMapper;

import java.util.List;
import java.util.Collection;

/**
 * 送货质量Service业务层处理
 *
 * @author yisl
 * @date 2026-02-28
 */
@Service
@RequiredArgsConstructor
public class MineQualityServiceImpl implements MineQualityService {

    private final MineQualityMapper mineQualityMapper;

    /**
     * 查询送货质量
     */
    public MineQualityVo queryById(Long id){
        return mineQualityMapper.selectVoById(id);
    }

    /**
     * 查询送货质量列表
     */
    public PageInfoRes<MineQualityVo> queryPageList(MineQualityDto dto, BasePage basePage) {
        LambdaQueryWrapper<MineQuality> lqw = buildQueryWrapper(dto);
        Page<MineQualityVo> result = mineQualityMapper.selectVoPage(basePage.build(), lqw);
        return PageInfoRes.build(result);
    }

    /**
     * 查询送货质量列表
     */
    public List<MineQualityVo> queryList(MineQualityDto dto) {
        LambdaQueryWrapper<MineQuality> lqw = buildQueryWrapper(dto);
        return mineQualityMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<MineQuality> buildQueryWrapper(MineQualityDto dto) {
        LambdaQueryWrapper<MineQuality> lqw = Wrappers.lambdaQuery();
        lqw.eq(StringUtils.isNotBlank(dto.getQualityNo()), MineQuality::getQualityNo, dto.getQualityNo());
        lqw.eq(dto.getWeightingId() != null, MineQuality::getWeightingId, dto.getWeightingId());
        lqw.eq(StringUtils.isNotBlank(dto.getWeightingNo()), MineQuality::getWeightingNo, dto.getWeightingNo());
        lqw.eq(dto.getShipMerchantId() != null, MineQuality::getShipMerchantId, dto.getShipMerchantId());
        lqw.eq(dto.getMoisture() != null, MineQuality::getMoisture, dto.getMoisture());
        lqw.eq(dto.getCuoRatio() != null, MineQuality::getCuoRatio, dto.getCuoRatio());
        lqw.eq(dto.getAcidDemand() != null, MineQuality::getAcidDemand, dto.getAcidDemand());
        lqw.eq(dto.getIsDel() != null, MineQuality::getIsDel, dto.getIsDel());
        return lqw;
    }

    /**
     * 新增送货质量
     */
    public void insertByBo(MineQualityDto dto) {
        MineQuality add = MapstructUtils.convert(dto, MineQuality.class);
        mineQualityMapper.insert(add);
    }

    /**
     * 修改送货质量
     */
    public void updateByBo(MineQualityDto dto) {
        MineQuality update = MapstructUtils.convert(dto, MineQuality.class);
        mineQualityMapper.updateById(update);
    }

    /**
     * 批量删除送货质量
     */
    public void deleteByIds(Collection<Long> ids) {
        mineQualityMapper.deleteBatchIds(ids);
    }
}
