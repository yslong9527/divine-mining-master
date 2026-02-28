package com.divine.system.domain.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.divine.common.mybatis.core.domain.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

import java.io.Serial;

/**
 * 公告已读记录对象 sys_notice_read
 *
 * @author yisl
 * @date 2026-02-28
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sys_notice_read")
public class NoticeRead extends BaseEntity {

    @Serial
    private static final long serialVersionUID=1L;

    /**
     * 主键
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 公告ID
     */
    private Long noticeId;
    /**
     * 用户ID
     */
    private Long userId;
    /**
     * 阅读时间
     */
    private Date readTime;

}
