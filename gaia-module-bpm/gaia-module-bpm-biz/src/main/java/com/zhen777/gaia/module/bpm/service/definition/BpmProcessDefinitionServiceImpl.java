package com.zhen777.gaia.module.bpm.service.definition;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.common.util.object.PageUtils;
import com.zhen777.gaia.framework.flowable.core.util.FlowableUtils;
import com.zhen777.gaia.module.bpm.controller.admin.definition.vo.process.BpmProcessDefinitionListReqVO;
import com.zhen777.gaia.module.bpm.controller.admin.definition.vo.process.BpmProcessDefinitionPageItemRespVO;
import com.zhen777.gaia.module.bpm.controller.admin.definition.vo.process.BpmProcessDefinitionPageReqVO;
import com.zhen777.gaia.module.bpm.controller.admin.definition.vo.process.BpmProcessDefinitionRespVO;
import com.zhen777.gaia.module.bpm.convert.definition.BpmProcessDefinitionConvert;
import com.zhen777.gaia.module.bpm.dal.dataobject.definition.BpmFormDO;
import com.zhen777.gaia.module.bpm.dal.dataobject.definition.BpmProcessDefinitionExtDO;
import com.zhen777.gaia.module.bpm.dal.mysql.definition.BpmProcessDefinitionExtMapper;
import com.zhen777.gaia.module.bpm.service.definition.dto.BpmProcessDefinitionCreateReqDTO;
import lombok.extern.slf4j.Slf4j;
import org.flowable.bpmn.converter.BpmnXMLConverter;
import org.flowable.bpmn.model.BpmnModel;
import org.flowable.common.engine.impl.db.SuspensionState;
import org.flowable.common.engine.impl.util.io.BytesStreamSource;
import org.flowable.engine.RepositoryService;
import org.flowable.engine.repository.Deployment;
import org.flowable.engine.repository.ProcessDefinition;
import org.flowable.engine.repository.ProcessDefinitionQuery;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.*;

import static com.zhen777.gaia.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.zhen777.gaia.framework.common.util.collection.CollectionUtils.*;
import static com.zhen777.gaia.framework.common.util.collection.CollectionUtils.convertMap;
import static com.zhen777.gaia.module.bpm.enums.ErrorCodeConstants.PROCESS_DEFINITION_KEY_NOT_MATCH;
import static com.zhen777.gaia.module.bpm.enums.ErrorCodeConstants.PROCESS_DEFINITION_NAME_NOT_MATCH;
import static java.util.Collections.emptyList;

/**
 * ??????????????????
 * ???????????? Flowable {@link ProcessDefinition} ??? {@link Deployment} ?????????
 *
 * @author yunlongn
 * @author ZJQ
 * @author ????????????
 */
@Service
@Validated
@Slf4j
public class BpmProcessDefinitionServiceImpl implements BpmProcessDefinitionService {

    private static final String BPMN_FILE_SUFFIX = ".bpmn";

    @Resource
    private RepositoryService repositoryService;

    @Resource
    private BpmProcessDefinitionExtMapper processDefinitionMapper;

    @Resource
    private BpmFormService formService;

    @Override
    public ProcessDefinition getProcessDefinition(String id) {
        return repositoryService.getProcessDefinition(id);
    }

    @Override
    public ProcessDefinition getProcessDefinition2(String id) {
        return repositoryService.createProcessDefinitionQuery().processDefinitionId(id).singleResult();
    }

    @Override
    public ProcessDefinition getProcessDefinitionByDeploymentId(String deploymentId) {
        if (StrUtil.isEmpty(deploymentId)) {
            return null;
        }
        return repositoryService.createProcessDefinitionQuery().deploymentId(deploymentId).singleResult();
    }

    @Override
    public List<ProcessDefinition> getProcessDefinitionListByDeploymentIds(Set<String> deploymentIds) {
        if (CollUtil.isEmpty(deploymentIds)) {
            return emptyList();
        }
        return repositoryService.createProcessDefinitionQuery().deploymentIds(deploymentIds).list();
    }

    @Override
    public ProcessDefinition getActiveProcessDefinition(String key) {
        return repositoryService.createProcessDefinitionQuery().processDefinitionKey(key).active().singleResult();
    }

    @Override
    public List<Deployment> getDeployments(Set<String> ids) {
        if (CollUtil.isEmpty(ids)) {
            return emptyList();
        }
        List<Deployment> list = new ArrayList<>(ids.size());
        for (String id : ids) {
            addIfNotNull(list, getDeployment(id));
        }
        return list;
    }

    @Override
    public Deployment getDeployment(String id) {
        if (StrUtil.isEmpty(id)) {
            return null;
        }
        return repositoryService.createDeploymentQuery().deploymentId(id).singleResult();
    }

    @Override
    public BpmnModel getBpmnModel(String processDefinitionId) {
        return repositoryService.getBpmnModel(processDefinitionId);
    }

    @Override
    public String createProcessDefinition(@Valid BpmProcessDefinitionCreateReqDTO createReqDTO) {
        // ?????? Deployment ??????
        Deployment deploy = repositoryService.createDeployment()
                .key(createReqDTO.getKey()).name(createReqDTO.getName()).category(createReqDTO.getCategory())
                .addBytes(createReqDTO.getKey() + BPMN_FILE_SUFFIX, createReqDTO.getBpmnBytes())
                .deploy();

        // ?????? ProcessDefinition ??? category ??????
        ProcessDefinition definition = repositoryService.createProcessDefinitionQuery()
                .deploymentId(deploy.getId()).singleResult();
        repositoryService.setProcessDefinitionCategory(definition.getId(), createReqDTO.getCategory());
        // ?????? 1???ProcessDefinition ??? key ??? name ????????? BPMN ?????? <bpmn2:process /> ??? id ??? name ??????
        // ?????? 2????????????????????????????????????????????? Model???Deployment???ProcessDefinition ??????????????? key?????????????????????
        //          ?????????????????? ProcessDefinition ???????????????????????????
        if (!Objects.equals(definition.getKey(), createReqDTO.getKey())) {
            throw exception(PROCESS_DEFINITION_KEY_NOT_MATCH, createReqDTO.getKey(), definition.getKey());
        }
        if (!Objects.equals(definition.getName(), createReqDTO.getName())) {
            throw exception(PROCESS_DEFINITION_NAME_NOT_MATCH, createReqDTO.getName(), definition.getName());
        }

        // ???????????????
        BpmProcessDefinitionExtDO definitionDO = BpmProcessDefinitionConvert.INSTANCE.convert2(createReqDTO)
                .setProcessDefinitionId(definition.getId());
        processDefinitionMapper.insert(definitionDO);
        return definition.getId();
    }

    @Override
    public void updateProcessDefinitionState(String id, Integer state) {
        // ??????
        if (Objects.equals(SuspensionState.ACTIVE.getStateCode(), state)) {
            repositoryService.activateProcessDefinitionById(id, false, null);
            return;
        }
        // ??????
        if (Objects.equals(SuspensionState.SUSPENDED.getStateCode(), state)) {
            // suspendProcessInstances = false??????????????????????????????????????????
            // ?????????????????????????????????????????????????????????????????????????????????
            repositoryService.suspendProcessDefinitionById(id, false, null);
            return;
        }
        log.error("[updateProcessDefinitionState][????????????({}) ??????????????????({})]", id, state);
    }

    @Override
    public String getProcessDefinitionBpmnXML(String id) {
        BpmnModel bpmnModel = repositoryService.getBpmnModel(id);
        if (bpmnModel == null) {
            return null;
        }
        BpmnXMLConverter converter = new BpmnXMLConverter();
        return StrUtil.utf8Str(converter.convertToXML(bpmnModel));
    }

    @Override
    public boolean isProcessDefinitionEquals(@Valid BpmProcessDefinitionCreateReqDTO createReqDTO) {
        // ?????? name???description ????????????
        ProcessDefinition oldProcessDefinition = getActiveProcessDefinition(createReqDTO.getKey());
        if (oldProcessDefinition == null) {
            return false;
        }
        BpmProcessDefinitionExtDO oldProcessDefinitionExt = getProcessDefinitionExt(oldProcessDefinition.getId());
        if (!StrUtil.equals(createReqDTO.getName(), oldProcessDefinition.getName())
                || !StrUtil.equals(createReqDTO.getDescription(), oldProcessDefinitionExt.getDescription())
                || !StrUtil.equals(createReqDTO.getCategory(), oldProcessDefinition.getCategory())) {
            return false;
        }
        // ?????? form ??????????????????
        if (!ObjectUtil.equal(createReqDTO.getFormType(), oldProcessDefinitionExt.getFormType())
                || !ObjectUtil.equal(createReqDTO.getFormId(), oldProcessDefinitionExt.getFormId())
                || !ObjectUtil.equal(createReqDTO.getFormConf(), oldProcessDefinitionExt.getFormConf())
                || !ObjectUtil.equal(createReqDTO.getFormFields(), oldProcessDefinitionExt.getFormFields())
                || !ObjectUtil.equal(createReqDTO.getFormCustomCreatePath(), oldProcessDefinitionExt.getFormCustomCreatePath())
                || !ObjectUtil.equal(createReqDTO.getFormCustomViewPath(), oldProcessDefinitionExt.getFormCustomViewPath())) {
            return false;
        }
        // ?????? BPMN XML ??????
        BpmnModel newModel = buildBpmnModel(createReqDTO.getBpmnBytes());
        BpmnModel oldModel = getBpmnModel(oldProcessDefinition.getId());
        // ??????????????????
        if (!FlowableUtils.equals(oldModel, newModel)) {
            return false;
        }
        // ????????????????????????????????? true
        return true;
    }

    /**
     * ??????????????? BPMN Model
     *
     * @param bpmnBytes ????????? BPMN XML ????????????
     * @return BPMN Model
     */
    private  BpmnModel buildBpmnModel(byte[] bpmnBytes) {
        // ????????? BpmnModel ??????
        BpmnXMLConverter converter = new BpmnXMLConverter();
        return converter.convertToBpmnModel(new BytesStreamSource(bpmnBytes), true, true);
    }

    @Override
    public BpmProcessDefinitionExtDO getProcessDefinitionExt(String id) {
        return processDefinitionMapper.selectByProcessDefinitionId(id);
    }

    @Override
    public List<BpmProcessDefinitionRespVO> getProcessDefinitionList(BpmProcessDefinitionListReqVO listReqVO) {
        // ??????????????????
        ProcessDefinitionQuery definitionQuery = repositoryService.createProcessDefinitionQuery();
        if (Objects.equals(SuspensionState.SUSPENDED.getStateCode(), listReqVO.getSuspensionState())) {
            definitionQuery.suspended();
        } else if (Objects.equals(SuspensionState.ACTIVE.getStateCode(), listReqVO.getSuspensionState())) {
            definitionQuery.active();
        }
        // ????????????
        List<ProcessDefinition> processDefinitions = definitionQuery.list();
        if (CollUtil.isEmpty(processDefinitions)) {
            return Collections.emptyList();
        }

        // ?????? BpmProcessDefinitionDO Map
        List<BpmProcessDefinitionExtDO> processDefinitionDOs = processDefinitionMapper.selectListByProcessDefinitionIds(
                convertList(processDefinitions, ProcessDefinition::getId));
        Map<String, BpmProcessDefinitionExtDO> processDefinitionDOMap = convertMap(processDefinitionDOs,
                BpmProcessDefinitionExtDO::getProcessDefinitionId);
        // ????????????????????????
        return BpmProcessDefinitionConvert.INSTANCE.convertList3(processDefinitions, processDefinitionDOMap);
    }

    @Override
    public PageResult<BpmProcessDefinitionPageItemRespVO> getProcessDefinitionPage(BpmProcessDefinitionPageReqVO pageVO) {
        ProcessDefinitionQuery definitionQuery = repositoryService.createProcessDefinitionQuery();
        if (StrUtil.isNotBlank(pageVO.getKey())) {
            definitionQuery.processDefinitionKey(pageVO.getKey());
        }

        // ????????????
        List<ProcessDefinition> processDefinitions = definitionQuery.orderByProcessDefinitionVersion().desc()
                .listPage(PageUtils.getStart(pageVO), pageVO.getPageSize());

        if (CollUtil.isEmpty(processDefinitions)) {
            return new PageResult<>(emptyList(), definitionQuery.count());
        }
        // ?????? Deployment Map
        Set<String> deploymentIds = new HashSet<>();
        processDefinitions.forEach(definition -> addIfNotNull(deploymentIds, definition.getDeploymentId()));
        Map<String, Deployment> deploymentMap = getDeploymentMap(deploymentIds);

        // ?????? BpmProcessDefinitionDO Map
        List<BpmProcessDefinitionExtDO> processDefinitionDOs = processDefinitionMapper.selectListByProcessDefinitionIds(
                convertList(processDefinitions, ProcessDefinition::getId));
        Map<String, BpmProcessDefinitionExtDO> processDefinitionDOMap = convertMap(processDefinitionDOs,
                BpmProcessDefinitionExtDO::getProcessDefinitionId);

        // ?????? Form Map
        Set<Long> formIds = convertSet(processDefinitionDOs, BpmProcessDefinitionExtDO::getFormId);
        Map<Long, BpmFormDO> formMap = formService.getFormMap(formIds);

        // ????????????
        long definitionCount = definitionQuery.count();
        return new PageResult<>(BpmProcessDefinitionConvert.INSTANCE.convertList(processDefinitions, deploymentMap,
                processDefinitionDOMap, formMap), definitionCount);
    }

}
