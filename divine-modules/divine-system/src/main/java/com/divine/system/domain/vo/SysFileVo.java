package com.divine.system.domain.vo;

import com.divine.system.domain.entity.SysFile;
import io.github.linpeilie.annotations.AutoMapper;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * OSS对象存储视图对象 sys_oss
 *
 * @author Lion Li
 */
@Data
@AutoMapper(target = SysFile.class)
public class SysFileVo implements Serializable {

    @Schema(description = "id")
    private Long id;

    @Schema(description = "文件名")
    private String fileName;

    @Schema(description = "URL地址")
    private String fileUrl;

    @Schema(description = "文件后缀名")
    private String fileSuffix;

    @Schema(description = "业务id")
    private Long bizId;

    @Schema(description = "业务类型")
    private String bizType;

    @Schema(description = "创建时间")
    private Date createTime;

    @Schema(description = "上传人")
    private String createBy;


}
