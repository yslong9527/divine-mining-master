package com.divine.system.domain.dto;

import com.divine.system.domain.entity.SysFile;
import com.divine.common.mybatis.core.domain.BaseEntity;
import io.github.linpeilie.annotations.AutoMapper;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * OSS对象存储分页查询对象 sys_oss
 *
 * @author Lion Li
 */
@Data
@EqualsAndHashCode(callSuper = true)
@AutoMapper(target = SysFile.class, reverseConvertGenerate = false)
public class SysQueryFileDto extends BaseEntity {

    /**
     * id
     */
    private Long id;

    /**
     * 文件名
     */
    private String fileName;

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
