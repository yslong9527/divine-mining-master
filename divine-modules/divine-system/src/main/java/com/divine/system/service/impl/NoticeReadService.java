package com.divine.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.divine.common.core.utils.MapstructUtils;
import com.divine.common.mybatis.core.page.PageInfoRes;
import com.divine.common.mybatis.core.page.BasePage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.divine.system.domain.dto.NoticeReadDto;
import com.divine.system.domain.entity.NoticeRead;
import com.divine.system.domain.vo.NoticeReadVo;
import com.divine.system.mapper.NoticeReadMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 公告已读记录Service业务层处理
 *
 * @author yisl
 * @date 2026-02-28
 */
@Service
@RequiredArgsConstructor
public class NoticeReadService {

    private final NoticeReadMapper noticeReadMapper;

    /**
     * 查询公告已读记录
     */
    public NoticeReadVo queryById(Long id){
        return noticeReadMapper.selectVoById(id);
    }

    /**
     * 查询公告已读记录列表
     */
    public PageInfoRes<NoticeReadVo> queryPageList(NoticeReadDto dto, BasePage basePage) {
        LambdaQueryWrapper<NoticeRead> lqw = buildQueryWrapper(dto);
        Page<NoticeReadVo> result = noticeReadMapper.selectVoPage(basePage.build(), lqw);
        return PageInfoRes.build(result);
    }

    /**
     * 查询公告已读记录列表
     */
    public List<NoticeReadVo> queryList(NoticeReadDto dto) {
        LambdaQueryWrapper<NoticeRead> lqw = buildQueryWrapper(dto);
        return noticeReadMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<NoticeRead> buildQueryWrapper(NoticeReadDto dto) {
        LambdaQueryWrapper<NoticeRead> lqw = Wrappers.lambdaQuery();
        lqw.eq(dto.getNoticeId() != null, NoticeRead::getNoticeId, dto.getNoticeId());
        lqw.eq(dto.getUserId() != null, NoticeRead::getUserId, dto.getUserId());
        lqw.eq(dto.getReadTime() != null, NoticeRead::getReadTime, dto.getReadTime());
        return lqw;
    }

    /**
     * 新增公告已读记录
     */
    public void insertByBo(NoticeReadDto dto) {
        NoticeRead add = MapstructUtils.convert(dto, NoticeRead.class);
        noticeReadMapper.insert(add);
    }

    /**
     * 修改公告已读记录
     */
    public void updateByBo(NoticeReadDto dto) {
        NoticeRead update = MapstructUtils.convert(dto, NoticeRead.class);
        noticeReadMapper.updateById(update);
    }

    /**
     * 批量删除公告已读记录
     */
    public void deleteByIds(Collection<Long> ids) {
        noticeReadMapper.deleteBatchIds(ids);
    }
}
