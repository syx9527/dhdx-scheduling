package com.ruoyi.web.controller.duty;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.duty.domain.SysDutyLog;
import com.ruoyi.duty.service.ISysDutyLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 值班记录Controller
 *
 * @author ruoyi
 * @date 2023-01-28
 */
@RestController
@RequestMapping("/duty/duty_log")
public class SysDutyLogController extends BaseController
{
    @Autowired
    private ISysDutyLogService sysDutyLogService;

    /**
     * 查询值班记录列表
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysDutyLog sysDutyLog)
    {
        startPage();
        List<SysDutyLog> list = sysDutyLogService.selectSysDutyLogList(sysDutyLog);
        return getDataTable(list);
    }

    /**
     * 导出值班记录列表
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:export')")
    @Log(title = "值班记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysDutyLog sysDutyLog)
    {
        List<SysDutyLog> list = sysDutyLogService.selectSysDutyLogList(sysDutyLog);
        ExcelUtil<SysDutyLog> util = new ExcelUtil<SysDutyLog>(SysDutyLog.class);
        util.exportExcel(response, list, "值班记录数据");
    }

    /**
     * 获取值班记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:query')")
    @GetMapping(value = "/{logId}")
    public AjaxResult getInfo(@PathVariable("logId") Long logId)
    {
        return success(sysDutyLogService.selectSysDutyLogByLogId(logId));
    }

    /**
     * 新增值班记录
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:add')")
    @Log(title = "值班记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysDutyLog sysDutyLog)
    {
        return toAjax(sysDutyLogService.insertSysDutyLog(sysDutyLog));
    }

    /**
     * 修改值班记录
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:edit')")
    @Log(title = "值班记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysDutyLog sysDutyLog)
    {
        return toAjax(sysDutyLogService.updateSysDutyLog(sysDutyLog));
    }

    /**
     * 删除值班记录
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:remove')")
    @Log(title = "值班记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{logIds}")
    public AjaxResult remove(@PathVariable Long[] logIds)
    {
        return toAjax(sysDutyLogService.deleteSysDutyLogByLogIds(logIds));
    }
}
