package com.divine.common.core.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * @Author: yslong
 * @Date: 2022/4/12 17:46
 * @Description: 返回结果码枚举类
 */

@Getter
@AllArgsConstructor
public enum HttpStatusEnum {
    SUCCESS(200,"操作成功!"),
    FAIL(500,"服务器内部异常"),
    PARAM_FAIL(400,"请求参数错误（缺少，格式不匹配）!"),
    LOGIN_FAILURE(401,"请先进行登录！"),
    FORBIDDEN(403,"访问受限，暂无访问权限!"),
    NOT_FOUND(404,"资源，服务未找到!"),
    UNSUPPORTED_TYPE(415,"不支持的数据，媒体类型"),
    NOT_IMPLEMENTED(501,"接口未实现!"),
    WARN(601,"警告!");

    private final Integer code;
    private final String msg;
}
