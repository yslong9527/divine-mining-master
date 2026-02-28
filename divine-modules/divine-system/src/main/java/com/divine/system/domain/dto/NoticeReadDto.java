package com.divine.system.domain.dto;

import com.divine.common.core.validate.AddGroup;
import com.divine.common.core.validate.EditGroup;
import com.divine.common.mybatis.core.domain.BaseEntity;
import com.divine.system.domain.entity.NoticeRead;
import lombok.Data;
import lombok.EqualsAndHashCode;
import jakarta.validation.constraints.*;
import io.github.linpeilie.annotations.AutoMapper;

import java.util.Date;

/**
 * 公告已读记录业务对象 sys_notice_read
 *
 * @author yisl
 * @date 2026-02-28
 */

@Data
@EqualsAndHashCode(callSuper = true)
@AutoMapper(target = NoticeRead.class, reverseConvertGenerate = false)
public class NoticeReadDto extends BaseEntity {

    /**
     * 主键
     */
    @NotNull(message = "主键不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 公告ID
     */
    @NotNull(message = "公告ID不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long noticeId;

    /**
     * 用户ID
     */
    @NotNull(message = "用户ID不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long userId;

    /**
     * 阅读时间
     */
    @NotNull(message = "阅读时间不能为空", groups = { AddGroup.class, EditGroup.class })
    private Date readTime;


}
