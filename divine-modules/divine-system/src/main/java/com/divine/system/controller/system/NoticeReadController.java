package com.divine.system.controller.system;

import java.util.List;

import com.divine.common.core.domain.Result;
import com.divine.common.excel.utils.ExcelUtil;
import com.divine.common.idempotent.annotation.RepeatSubmit;
import com.divine.common.mybatis.core.page.BasePage;
import com.divine.common.mybatis.core.page.PageInfoRes;
import com.divine.system.domain.dto.NoticeReadDto;
import com.divine.system.domain.vo.NoticeReadVo;
import com.divine.system.service.impl.NoticeReadService;
import lombok.RequiredArgsConstructor;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.constraints.*;
import cn.dev33.satoken.annotation.SaCheckPermission;
import org.springframework.web.bind.annotation.*;
import org.springframework.validation.annotation.Validated;
import com.divine.common.log.annotation.Log;
import com.divine.common.web.core.BaseController;
import com.divine.common.core.validate.AddGroup;
import com.divine.common.core.validate.EditGroup;
import com.divine.common.log.enums.BusinessType;

/**
 * 公告已读记录
 *
 * @author yisl
 * @date 2026-02-28
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/wms/noticeRead")
public class NoticeReadController extends BaseController {

    private final NoticeReadService noticeReadService;

    /**
     * 查询公告已读记录列表
     */
    @SaCheckPermission("wms:noticeRead:list")
    @GetMapping("/list")
    public PageInfoRes<NoticeReadVo> list(NoticeReadDto dto, BasePage basePage) {
        return noticeReadService.queryPageList(dto, basePage);
    }

    /**
     * 导出公告已读记录列表
     */
    @SaCheckPermission("wms:noticeRead:export")
    @Log(title = "公告已读记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(NoticeReadDto dto, HttpServletResponse response) {
        List<NoticeReadVo> list = noticeReadService.queryList(dto);
        ExcelUtil.exportExcel(list, "公告已读记录", NoticeReadVo.class, response);
    }

    /**
     * 获取公告已读记录详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("wms:noticeRead:query")
    @GetMapping("/{id}")
    public Result<NoticeReadVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return Result.success(noticeReadService.queryById(id));
    }

    /**
     * 新增公告已读记录
     */
    @SaCheckPermission("wms:noticeRead:add")
    @Log(title = "公告已读记录", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public Result<Void> add(@Validated(AddGroup.class) @RequestBody NoticeReadDto dto) {
        noticeReadService.insertByBo(dto);
        return Result.success();
    }

    /**
     * 修改公告已读记录
     */
    @SaCheckPermission("wms:noticeRead:edit")
    @Log(title = "公告已读记录", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public Result<Void> edit(@Validated(EditGroup.class) @RequestBody NoticeReadDto dto) {
        noticeReadService.updateByBo(dto);
        return Result.success();
    }

    /**
     * 删除公告已读记录
     *
     * @param ids 主键串
     */
    @SaCheckPermission("wms:noticeRead:remove")
    @Log(title = "公告已读记录", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public Result<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        noticeReadService.deleteByIds(List.of(ids));
        return Result.success();
    }
}
