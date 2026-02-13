package com.divine.warehouse.controller;

import cn.dev33.satoken.annotation.SaCheckPermission;
import com.divine.common.core.domain.Result;
import com.divine.warehouse.enums.OptionTypeEnum;
import com.divine.common.core.domain.vo.OptionVO;
import com.divine.warehouse.service.CommonService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Author: Yisl
 * @Description:
 * @Date: 2026/2/10 9:10
 */
@Tag(name = "公共接口")
@RequiredArgsConstructor
@RestController
public class CommonController {

    @Autowired
    private CommonService commonService;


    @GetMapping("/getOption")
    @Operation(summary = "获取下拉框")
    @SaCheckPermission("wms:check:all")
    public Result<List<OptionVO>> getOption(@RequestParam
                                            @Parameter(
                                                description = "下拉框类型",
                                                required = true,
                                                schema = @Schema(implementation = OptionTypeEnum.class)
                                            ) OptionTypeEnum type) {
        return Result.success(commonService.getOption(type.getCode()));
    }


}
