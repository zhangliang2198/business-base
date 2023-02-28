package com.zhen777.gaia.module.bpm.dal.mysql.definition;

import com.zhen777.gaia.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.zhen777.gaia.module.bpm.dal.dataobject.definition.BpmProcessDefinitionExtDO;
import com.zhen777.gaia.framework.mybatis.core.mapper.BaseMapperX;
import org.apache.ibatis.annotations.Mapper;

import java.util.Collection;
import java.util.List;

@Mapper
public interface BpmProcessDefinitionExtMapper extends BaseMapperX<BpmProcessDefinitionExtDO> {

    default List<BpmProcessDefinitionExtDO> selectListByProcessDefinitionIds(Collection<String> processDefinitionIds) {
        return selectList("process_definition_id", processDefinitionIds);
    }

    default BpmProcessDefinitionExtDO selectByProcessDefinitionId(String processDefinitionId) {
        return selectOne("process_definition_id", processDefinitionId);
    }

}
