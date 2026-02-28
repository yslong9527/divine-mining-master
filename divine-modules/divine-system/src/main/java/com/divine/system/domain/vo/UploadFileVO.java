package com.divine.system.domain.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

/**
 * @Author: Yisl
 * @Description:
 * @Date: 2026/2/17 17:32
 */
@Data
@AllArgsConstructor
@Builder
public class UploadFileVO {

    /**
     * 文件地址
     */
    private String url;

    /**
     * 文件名称
     */
    private String fileName;
}
