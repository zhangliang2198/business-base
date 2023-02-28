package com.zhen777.gaia.module.bpm.controller.admin.definition.vo.group;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Schema(description = "管理后台 - 用户组精简信息 Response VO")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BpmUserGroupSimpleRespVO {

    @Schema(description = "用户组编号", required = true, example = "1024")
    private Long id;

    @Schema(description = "用户组名字", required = true, example = "芋道")
    private String name;

}
