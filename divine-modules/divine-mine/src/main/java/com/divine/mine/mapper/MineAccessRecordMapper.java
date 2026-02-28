package com.divine.mine.mapper;

import com.divine.common.mybatis.core.mapper.BaseMapperPlus;
import com.divine.mine.domain.entity.MineAccessRecord;
import com.divine.mine.domain.vo.MineAccessRecordVo;
import org.apache.ibatis.annotations.Mapper;

/**
 * 车辆出入厂记录Mapper接口
 *
 * @author yisl
 * @date 2026-02-28
 */
@Mapper
public interface MineAccessRecordMapper extends BaseMapperPlus<MineAccessRecord, MineAccessRecordVo> {

}
