package com.divine.system.mapper;

import com.divine.common.mybatis.core.mapper.BaseMapperPlus;
import com.divine.system.domain.entity.NoticeRead;
import com.divine.system.domain.vo.NoticeReadVo;
import org.apache.ibatis.annotations.Mapper;

/**
 * 公告已读记录Mapper接口
 *
 * @author yisl
 * @date 2026-02-28
 */
@Mapper
public interface NoticeReadMapper extends BaseMapperPlus<NoticeRead, NoticeReadVo> {

}
