package com.divine.mine.mapper;

import com.divine.common.mybatis.core.mapper.BaseMapperPlus;
import com.divine.mine.domain.entity.MineCar;
import com.divine.mine.domain.vo.MineCarVo;
import org.apache.ibatis.annotations.Mapper;

/**
 * 车辆信息Mapper接口
 *
 * @author yisl
 * @date 2026-02-28
 */
@Mapper
public interface MineCarMapper extends BaseMapperPlus<MineCar, MineCarVo> {

}
