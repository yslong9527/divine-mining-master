package com.divine.warehouse.service;


import com.divine.common.core.domain.vo.OptionVO;

import java.util.List;

/**
 * 库存盘点单据详情Service业务层处理
 *
 * @author zcc
 * @date 2024-08-13
 */
public interface CommonService {

    /**
     * 获取编号
     * @param type
     * @return
     */
    String getNo(String type);

    /**
     * 获取下拉框
     * @param type
     * @return
     */
    List<OptionVO> getOption(String type);
}
