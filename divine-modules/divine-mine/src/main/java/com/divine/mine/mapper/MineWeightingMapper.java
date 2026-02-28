package com.divine.mine.mapper;

import com.divine.common.mybatis.core.mapper.BaseMapperPlus;
import com.divine.mine.domain.entity.MineWeighting;
import com.divine.mine.domain.vo.MineWeightingVo;
import org.apache.ibatis.annotations.Mapper;

/**
 * 过磅记录Mapper接口
 *
 * @author yisl
 * @date 2026-02-28
 */
@Mapper
public interface MineWeightingMapper extends BaseMapperPlus<MineWeighting, MineWeightingVo> {

}
