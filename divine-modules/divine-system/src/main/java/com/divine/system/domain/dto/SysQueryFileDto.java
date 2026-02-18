package com.divine.system.domain.dto;

import com.divine.system.domain.entity.SysFile;
import com.divine.common.mybatis.core.domain.BaseEntity;
import io.github.linpeilie.annotations.AutoMapper;
import io.swagger.v3.oas.annotations.media.Schema;
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

    @Schema(description = "id")
    private Long id;

    @Schema(description = "文件名")
    private String fileName;

    @Schema(description = "文件后缀名")
    private String fileSuffix;

    @Schema(description = "业务id")
    private Long bizId;

    @Schema(description = "业务类型")
    private String bizType;

}
