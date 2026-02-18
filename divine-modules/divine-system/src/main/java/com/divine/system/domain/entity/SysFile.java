package com.divine.system.domain.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.divine.common.mybatis.core.domain.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 文件存储
 *
 * @author Lion Li
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sys_file")
public class SysFile extends BaseEntity {

    /**
     * 对象存储主键
     */
    @TableId(value = "id")
    private Long id;

    /**
     * 文件名
     */
    private String fileName;

    /**
     * URL地址
     */
    private String fileUrl;

    /**
     * 文件后缀名
     */
    private String fileSuffix;

    /**
     * 业务id
     */
    private Long bizId;

    /**
     * 业务类型
     */
    private String bizType;


}
