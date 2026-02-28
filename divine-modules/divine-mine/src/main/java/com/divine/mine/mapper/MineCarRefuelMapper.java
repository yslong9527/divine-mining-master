package com.divine.mine.mapper;

import com.divine.common.mybatis.core.mapper.BaseMapperPlus;
import com.divine.mine.domain.entity.MineCarRefuel;
import com.divine.mine.domain.vo.MineCarRefuelVo;
import org.apache.ibatis.annotations.Mapper;

/**
 * 车辆加油记录Mapper接口
 *
 * @author yisl
 * @date 2026-02-28
 */
@Mapper
public interface MineCarRefuelMapper extends BaseMapperPlus<MineCarRefuel, MineCarRefuelVo> {

}
