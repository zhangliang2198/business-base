package com.zhen777.gaia.module.bpm.dal.mysql.task;

import com.zhen777.gaia.framework.mybatis.core.mapper.BaseMapperX;
import com.zhen777.gaia.module.bpm.dal.dataobject.task.BpmTaskExtDO;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.Collection;
import java.util.List;

@Mapper
public interface BpmTaskExtMapper extends BaseMapperX<BpmTaskExtDO> {

    default void updateByTaskId(BpmTaskExtDO entity) {
        update(entity, new LambdaQueryWrapper<BpmTaskExtDO>().eq(BpmTaskExtDO::getTaskId, entity.getTaskId()));
    }

    default List<BpmTaskExtDO> selectListByTaskIds(Collection<String> taskIds) {
        return selectList(BpmTaskExtDO::getTaskId, taskIds);
    }

    default BpmTaskExtDO selectByTaskId(String taskId) {
        return selectOne(BpmTaskExtDO::getTaskId, taskId);
    }

}
