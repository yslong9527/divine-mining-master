package com.divine.mine.service;

import com.divine.common.mybatis.core.page.BasePage;
import com.divine.common.mybatis.core.page.PageInfoRes;
import com.divine.mine.domain.dto.MineCarDto;
import com.divine.mine.domain.vo.MineCarVo;

import java.util.Collection;
import java.util.List;

/**
 * 车辆信息Service业务层处理
 *
 * @author yisl
 * @date 2026-02-28
 */
public interface MineCarService {

    /**
     * 查询车辆信息
     */
    MineCarVo queryById(Long id);

    /**
     * 查询车辆信息列表
     */
    PageInfoRes<MineCarVo> queryPageList(MineCarDto dto, BasePage basePage);

    /**
     * 查询车辆信息列表
     */
    List<MineCarVo> queryList(MineCarDto dto);

    /**
     * 新增车辆信息
     */
    void insertByBo(MineCarDto dto);

    /**
     * 修改车辆信息
     */
    void updateByBo(MineCarDto dto);

    /**
     * 批量删除车辆信息
     */
    void deleteByIds(Collection<Long> ids);
}
