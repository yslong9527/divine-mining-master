package com.divine.common.core.domain;

import com.divine.common.core.enums.HttpStatusEnum;
import lombok.Data;
import org.apache.commons.lang3.StringUtils;

import java.io.Serializable;

/**
 * 响应信息主体
 *
 * @author Lion Li
 */
@Data
public class Result<T> implements Serializable {

    private int code;

    private String msg;

    private T data;

    private long timestamp;

    public Result() {
        this.timestamp = System.currentTimeMillis();
    }

    public Result(int code, String msg, T data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
        this.timestamp = System.currentTimeMillis();
    }

    public static <T> Result<T> success() {
        return success(null);
    }

    public static <T> Result<T> success(T data) {
        return success(null, data);
    }

    public static <T> Result<T> success(String msg, T data) {
        if (StringUtils.isBlank(msg)) {
            msg = HttpStatusEnum.SUCCESS.getMsg();
        }
        return new Result<>(HttpStatusEnum.SUCCESS.getCode(), msg, data);
    }

    public static <T> Result<T> fail() {
        return fail(null);
    }

    public static <T> Result<T> fail(String msg) {
        return fail(null, msg);
    }

    public static <T> Result<T> fail(Integer code, String msg) {
        return fail(code, msg, null);
    }

    public static <T> Result<T> fail(Integer code, String msg, T data) {
        if (code==null) {
            code = HttpStatusEnum.FAIL.getCode();
        }
        if (StringUtils.isBlank(msg)) {
            msg = HttpStatusEnum.FAIL.getMsg();
        }
        return new Result<>(code, msg, data);
    }

    public static <T> Result<T> warn() {
        return warn(null);
    }

    public static <T> Result<T> warn(String msg) {
        return warn(HttpStatusEnum.WARN.getCode(), msg);
    }

    public static <T> Result<T> warn(Integer code, String msg) {
        if (StringUtils.isBlank(msg)) {
            msg = HttpStatusEnum.WARN.getMsg();
        }
        return new Result<>(code, msg, null);
    }

    public static <T> Result<T> warn(String msg, T data) {
        if (StringUtils.isBlank(msg)) {
            msg = HttpStatusEnum.WARN.getMsg();
        }
        return new Result<>(HttpStatusEnum.WARN.getCode(), msg, data);
    }

    public static boolean isSuccess(Result<?> result) {
        return HttpStatusEnum.SUCCESS.getCode().equals(result.code);
    }

}
