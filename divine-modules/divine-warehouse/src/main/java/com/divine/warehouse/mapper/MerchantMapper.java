package com.divine.warehouse.mapper;

import com.divine.warehouse.domain.entity.Merchant;
import com.divine.warehouse.domain.vo.MerchantVo;
import com.divine.common.mybatis.core.mapper.BaseMapperPlus;
import org.apache.ibatis.annotations.Mapper;

/**
 * 往来单位Mapper接口
 *
 * @author yisl
 * @date 2024-07-05
 */
@Mapper
public interface MerchantMapper extends BaseMapperPlus<Merchant, MerchantVo> {

}
