package com.divine.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.divine.common.core.utils.MapstructUtils;
import com.divine.common.core.utils.StringUtils;
import com.divine.common.mybatis.core.page.BasePage;
import com.divine.common.mybatis.core.page.PageInfoRes;
import com.divine.system.domain.dto.SysNoticeDto;
import com.divine.system.domain.entity.SysNotice;
import com.divine.system.domain.vo.SysNoticeVo;
import com.divine.system.mapper.SysNoticeMapper;
import com.divine.system.mapper.SysUserMapper;
import com.divine.system.service.SysNoticeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

/**
 * 公告 服务层实现
 *
 * @author Lion Li
 */
@RequiredArgsConstructor
@Service
public class SysNoticeServiceImpl implements SysNoticeService {

    private final SysNoticeMapper noticeMapper;
    private final SysUserMapper userMapper;

    @Override
    public PageInfoRes<SysNoticeVo> selectPageNoticeList(SysNoticeDto notice, BasePage basePage) {
        LambdaQueryWrapper<SysNotice> lqw = buildQueryWrapper(notice);
        Page<SysNoticeVo> page = noticeMapper.selectVoPage(basePage.build(), lqw);
        return PageInfoRes.build(page);
    }

    /**
     * 查询公告信息
     *
     * @param noticeId 公告ID
     * @return 公告信息
     */
    @Override
    public SysNoticeVo selectNoticeById(Long noticeId) {
        return noticeMapper.selectVoById(noticeId);
    }

    /**
     * 查询公告列表
     *
     * @param notice 公告信息
     * @return 公告集合
     */
    @Override
    public List<SysNoticeVo> selectNoticeList(SysNoticeDto notice) {
        LambdaQueryWrapper<SysNotice> lqw = buildQueryWrapper(notice);
        return noticeMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<SysNotice> buildQueryWrapper(SysNoticeDto dto) {
        LambdaQueryWrapper<SysNotice> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(dto.getNoticeTitle()), SysNotice::getNoticeTitle, dto.getNoticeTitle());
        lqw.eq(StringUtils.isNotBlank(dto.getNoticeType()), SysNotice::getNoticeType, dto.getNoticeType());
        lqw.eq(StringUtils.isNotBlank(dto.getCreateBy()), SysNotice::getCreateBy, dto.getCreateBy());
        lqw.orderByAsc(SysNotice::getNoticeId);
        return lqw;
    }

    /**
     * 新增公告
     *
     * @param dto 公告信息
     * @return 结果
     */
    @Override
    public int insertNotice(SysNoticeDto dto) {
        SysNotice notice = MapstructUtils.convert(dto, SysNotice.class);
        return noticeMapper.insert(notice);
    }

    /**
     * 修改公告
     *
     * @param dto 公告信息
     * @return 结果
     */
    @Override
    public int updateNotice(SysNoticeDto dto) {
        SysNotice notice = MapstructUtils.convert(dto, SysNotice.class);
        return noticeMapper.updateById(notice);
    }

    /**
     * 删除公告对象
     *
     * @param noticeId 公告ID
     * @return 结果
     */
    @Override
    public int deleteNoticeById(Long noticeId) {
        return noticeMapper.deleteById(noticeId);
    }

    /**
     * 批量删除公告信息
     *
     * @param noticeIds 需要删除的公告ID
     * @return 结果
     */
    @Override
    public int deleteNoticeByIds(Long[] noticeIds) {
        return noticeMapper.deleteBatchIds(Arrays.asList(noticeIds));
    }
}
