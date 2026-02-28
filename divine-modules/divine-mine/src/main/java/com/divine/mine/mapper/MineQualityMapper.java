package com.divine.mine.mapper;

import com.divine.common.mybatis.core.mapper.BaseMapperPlus;
import com.divine.mine.domain.entity.MineQuality;
import com.divine.mine.domain.vo.MineQualityVo;
import org.apache.ibatis.annotations.Mapper;

/**
 * 送货质量Mapper接口
 *
 * @author yisl
 * @date 2026-02-28
 */
@Mapper
public interface MineQualityMapper extends BaseMapperPlus<MineQuality, MineQualityVo> {

}
