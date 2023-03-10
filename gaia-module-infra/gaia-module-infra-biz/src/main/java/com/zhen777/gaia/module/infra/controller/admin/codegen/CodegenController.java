package com.zhen777.gaia.module.infra.controller.admin.codegen;

import cn.hutool.core.io.IoUtil;
import cn.hutool.core.util.ZipUtil;
import com.zhen777.gaia.framework.common.pojo.CommonResult;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.framework.common.util.servlet.ServletUtils;
import com.zhen777.gaia.module.infra.controller.admin.codegen.vo.CodegenCreateListReqVO;
import com.zhen777.gaia.module.infra.controller.admin.codegen.vo.CodegenDetailRespVO;
import com.zhen777.gaia.module.infra.controller.admin.codegen.vo.CodegenPreviewRespVO;
import com.zhen777.gaia.module.infra.controller.admin.codegen.vo.CodegenUpdateReqVO;
import com.zhen777.gaia.module.infra.controller.admin.codegen.vo.table.CodegenTablePageReqVO;
import com.zhen777.gaia.module.infra.controller.admin.codegen.vo.table.CodegenTableRespVO;
import com.zhen777.gaia.module.infra.controller.admin.codegen.vo.table.DatabaseTableRespVO;
import com.zhen777.gaia.module.infra.convert.codegen.CodegenConvert;
import com.zhen777.gaia.module.infra.dal.dataobject.codegen.CodegenColumnDO;
import com.zhen777.gaia.module.infra.dal.dataobject.codegen.CodegenTableDO;
import com.zhen777.gaia.module.infra.service.codegen.CodegenService;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Parameters;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import static com.zhen777.gaia.framework.common.pojo.CommonResult.success;
import static com.zhen777.gaia.framework.security.core.util.SecurityFrameworkUtils.getLoginUserId;

@Tag(name = "???????????? - ???????????????")
@RestController
@RequestMapping("/infra/codegen")
@Validated
public class CodegenController {

    @Resource
    private CodegenService codegenService;

    @GetMapping("/db/table/list")
    @Operation(summary = "???????????????????????????????????????", description = "???????????????????????? Codegen ??????")
    @Parameters({
            @Parameter(name = "dataSourceConfigId", description = "????????????????????????", required = true, example = "1"),
            @Parameter(name = "name", description = "?????????????????????", example = "gaia"),
            @Parameter(name = "comment", description = "?????????????????????", example = "??????")
    })
    @PreAuthorize("@ss.hasPermission('infra:codegen:query')")
    public CommonResult<List<DatabaseTableRespVO>> getDatabaseTableList(
            @RequestParam(value = "dataSourceConfigId") Long dataSourceConfigId,
            @RequestParam(value = "name", required = false) String name,
            @RequestParam(value = "comment", required = false) String comment) {
        return success(codegenService.getDatabaseTableList(dataSourceConfigId, name, comment));
    }

    @GetMapping("/table/page")
    @Operation(summary = "?????????????????????")
    @PreAuthorize("@ss.hasPermission('infra:codegen:query')")
    public CommonResult<PageResult<CodegenTableRespVO>> getCodeGenTablePage(@Valid CodegenTablePageReqVO pageReqVO) {
        PageResult<CodegenTableDO> pageResult = codegenService.getCodegenTablePage(pageReqVO);
        return success(CodegenConvert.INSTANCE.convertPage(pageResult));
    }

    @GetMapping("/detail")
    @Operation(summary = "???????????????????????????")
    @Parameter(name = "tableId", description = "?????????", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('infra:codegen:query')")
    public CommonResult<CodegenDetailRespVO> getCodegenDetail(@RequestParam("tableId") Long tableId) {
        CodegenTableDO table = codegenService.getCodegenTablePage(tableId);
        List<CodegenColumnDO> columns = codegenService.getCodegenColumnListByTableId(tableId);
        // ????????????
        return success(CodegenConvert.INSTANCE.convert(table, columns));
    }

    @Operation(summary = "????????????????????????????????????????????????????????????????????????")
    @PostMapping("/create-list")
    @PreAuthorize("@ss.hasPermission('infra:codegen:create')")
    public CommonResult<List<Long>> createCodegenList(@Valid @RequestBody CodegenCreateListReqVO reqVO) {
        return success(codegenService.createCodegenList(getLoginUserId(), reqVO));
    }

    @Operation(summary = "????????????????????????????????????")
    @PutMapping("/update")
    @PreAuthorize("@ss.hasPermission('infra:codegen:update')")
    public CommonResult<Boolean> updateCodegen(@Valid @RequestBody CodegenUpdateReqVO updateReqVO) {
        codegenService.updateCodegen(updateReqVO);
        return success(true);
    }

    @Operation(summary = "??????????????????????????????????????????????????????????????????")
    @PutMapping("/sync-from-db")
    @Parameter(name = "tableId", description = "?????????", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('infra:codegen:update')")
    public CommonResult<Boolean> syncCodegenFromDB(@RequestParam("tableId") Long tableId) {
        codegenService.syncCodegenFromDB(tableId);
        return success(true);
    }

    @Operation(summary = "????????????????????????????????????")
    @DeleteMapping("/delete")
    @Parameter(name = "tableId", description = "?????????", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('infra:codegen:delete')")
    public CommonResult<Boolean> deleteCodegen(@RequestParam("tableId") Long tableId) {
        codegenService.deleteCodegen(tableId);
        return success(true);
    }

    @Operation(summary = "??????????????????")
    @GetMapping("/preview")
    @Parameter(name = "tableId", description = "?????????", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('infra:codegen:preview')")
    public CommonResult<List<CodegenPreviewRespVO>> previewCodegen(@RequestParam("tableId") Long tableId) {
        Map<String, String> codes = codegenService.generationCodes(tableId);
        return success(CodegenConvert.INSTANCE.convert(codes));
    }

    @Operation(summary = "??????????????????")
    @GetMapping("/download")
    @Parameter(name = "tableId", description = "?????????", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('infra:codegen:download')")
    public void downloadCodegen(@RequestParam("tableId") Long tableId,
                                HttpServletResponse response) throws IOException {
        // ????????????
        Map<String, String> codes = codegenService.generationCodes(tableId);
        // ?????? zip ???
        String[] paths = codes.keySet().toArray(new String[0]);
        ByteArrayInputStream[] ins = codes.values().stream().map(IoUtil::toUtf8Stream).toArray(ByteArrayInputStream[]::new);
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ZipUtil.zip(outputStream, paths, ins);
        // ??????
        ServletUtils.writeAttachment(response, "codegen.zip", outputStream.toByteArray());
    }

}
