package com.zhen777.gaia.module.mp.controller.admin.material;

import com.zhen777.gaia.framework.common.pojo.CommonResult;
import com.zhen777.gaia.framework.common.pojo.PageResult;
import com.zhen777.gaia.module.mp.controller.admin.material.vo.*;
import com.zhen777.gaia.module.mp.convert.material.MpMaterialConvert;
import com.zhen777.gaia.module.mp.dal.dataobject.material.MpMaterialDO;
import com.zhen777.gaia.module.mp.service.material.MpMaterialService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.io.IOException;

import static com.zhen777.gaia.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 公众号素材")
@RestController
@RequestMapping("/mp/material")
@Validated
public class MpMaterialController {

    @Resource
    private MpMaterialService mpMaterialService;

    @Operation(summary = "上传临时素材")
    @PostMapping("/upload-temporary")
    @PreAuthorize("@ss.hasPermission('mp:material:upload-temporary')")
    public CommonResult<MpMaterialUploadRespVO> uploadTemporaryMaterial(
            @Valid MpMaterialUploadTemporaryReqVO reqVO) throws IOException {
        MpMaterialDO material = mpMaterialService.uploadTemporaryMaterial(reqVO);
        return success(MpMaterialConvert.INSTANCE.convert(material));
    }

    @Operation(summary = "上传永久素材")
    @PostMapping("/upload-permanent")
    @PreAuthorize("@ss.hasPermission('mp:material:upload-permanent')")
    public CommonResult<MpMaterialUploadRespVO> uploadPermanentMaterial(
            @Valid MpMaterialUploadPermanentReqVO reqVO) throws IOException {
        MpMaterialDO material = mpMaterialService.uploadPermanentMaterial(reqVO);
        return success(MpMaterialConvert.INSTANCE.convert(material));
    }

    @Operation(summary = "删除素材")
    @DeleteMapping("/delete-permanent")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('mp:material:delete')")
    public CommonResult<Boolean> deleteMaterial(@RequestParam("id") Long id) {
        mpMaterialService.deleteMaterial(id);
        return success(true);
    }

    @Operation(summary = "上传图文内容中的图片")
    @PostMapping("/upload-news-image")
    @PreAuthorize("@ss.hasPermission('mp:material:upload-news-image')")
    public CommonResult<String> uploadNewsImage(@Valid MpMaterialUploadNewsImageReqVO reqVO)
            throws IOException {
        return success(mpMaterialService.uploadNewsImage(reqVO));
    }

    @Operation(summary = "获得素材分页")
    @GetMapping("/page")
    @PreAuthorize("@ss.hasPermission('mp:material:query')")
    public CommonResult<PageResult<MpMaterialRespVO>> getMaterialPage(@Valid MpMaterialPageReqVO pageReqVO) {
        PageResult<MpMaterialDO> pageResult = mpMaterialService.getMaterialPage(pageReqVO);
        return success(MpMaterialConvert.INSTANCE.convertPage(pageResult));
    }

}
