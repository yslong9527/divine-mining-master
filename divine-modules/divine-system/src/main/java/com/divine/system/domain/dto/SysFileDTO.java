package com.divine.system.domain.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author: Yisl
 * @Description:
 * @Date: 2026/2/18 15:40
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SysFileDTO {

    @Schema(description = "文件地址")
    @NotBlank(message = "文件地址不能为空")
    private String fileUrl;

    @Schema(description = "文件名称")
    @NotBlank(message = "文件名称不能为空")
    private String fileName;

    @Schema(description = "业务id")
    @NotBlank(message = "业务id不能为空")
    private String bizId;

    @Schema(description = "业务类型")
    @NotBlank(message = "业务类型不能为空")
    private String bizType;

}
