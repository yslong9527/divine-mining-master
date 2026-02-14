package com.divine.common.mybatis.core.page;

import cn.hutool.http.HttpStatus;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.divine.common.core.enums.HttpStatusEnum;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serial;
import java.io.Serializable;
import java.util.List;

/**
 * 表格分页数据对象
 *
 * @author Lion Li
 */

@Data
public class PageInfoRes<T> implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;


    /**
     * 消息状态码
     */
    private int code;

    /**
     * 消息内容
     */
    private String msg;
    /**
     * 总记录数
     */
    private long total;
    /**
     * 总记录数
     */
    private long pages;

    /**
     * 列表数据
     */
    private List<T> rows;

    private long timestamp;


    public PageInfoRes() {
        this.timestamp = System.currentTimeMillis();
    }

    /**
     * 分页
     *
     * @param list  列表数据
     * @param total 总记录数
     */
    public PageInfoRes(List<T> list, long total) {
        this.rows = list;
        this.total = total;
    }

    public static <T> PageInfoRes<T> build(IPage<T> page) {
        PageInfoRes<T> rspData = new PageInfoRes<>();
        rspData.setCode(HttpStatusEnum.SUCCESS.getCode());
        rspData.setMsg(HttpStatusEnum.SUCCESS.getMsg());
        rspData.setRows(page.getRecords());
        rspData.setTotal(page.getTotal());
        rspData.setPages(page.getPages());
        return rspData;
    }

    public static <T> PageInfoRes<T> build(List<T> list) {
        PageInfoRes<T> rspData = new PageInfoRes<>();
        rspData.setCode(HttpStatusEnum.SUCCESS.getCode());
        rspData.setMsg(HttpStatusEnum.SUCCESS.getMsg());
        rspData.setRows(list);
        rspData.setTotal(list.size());
        rspData.setPages(1);
        return rspData;
    }

    public static <T> PageInfoRes<T> build() {
        PageInfoRes<T> rspData = new PageInfoRes<>();
        rspData.setCode(HttpStatusEnum.SUCCESS.getCode());
        rspData.setMsg(HttpStatusEnum.SUCCESS.getMsg());
        return rspData;
    }

}
