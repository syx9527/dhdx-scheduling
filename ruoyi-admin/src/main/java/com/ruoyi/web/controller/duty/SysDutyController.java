package com.ruoyi.web.controller.duty;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.duty.domain.SysDuty;
import com.ruoyi.duty.service.ISysDutyService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 值班类型Controller
 *
 * @author ruoyi
 * @date 2023-01-30
 */
@RestController
@RequestMapping("/duty/duty")
public class SysDutyController extends BaseController {
    @Autowired
    private ISysDutyService sysDutyService;

    /**
     * 查询值班类型列表
     */
    @PreAuthorize("@ss.hasPermi('duty:duty:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysDuty sysDuty) {
        startPage();
        List<SysDuty> list = sysDutyService.selectSysDutyList(sysDuty);
        return getDataTable(list);
    }

    /**
     * 导出值班类型列表
     */
    @PreAuthorize("@ss.hasPermi('duty:duty:export')")
    @Log(title = "值班类型", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysDuty sysDuty) {
        List<SysDuty> list = sysDutyService.selectSysDutyList(sysDuty);
        ExcelUtil<SysDuty> util = new ExcelUtil<SysDuty>(SysDuty.class);
        util.exportExcel(response, list, "值班类型数据");
    }

    /**
     * 获取值班类型详细信息
     */
    @PreAuthorize("@ss.hasPermi('duty:duty:query')")
    @GetMapping(value = "/{dutyId}")
    public AjaxResult getInfo(@PathVariable("dutyId") Long dutyId) {
        return success(sysDutyService.selectSysDutyByDutyId(dutyId));
    }

    /**
     * 新增值班类型
     */
    @PreAuthorize("@ss.hasPermi('duty:duty:add')")
    @Log(title = "值班类型", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysDuty sysDuty) {
        sysDuty.setCreateBy(getUsername());
        return toAjax(sysDutyService.insertSysDuty(sysDuty));
    }

    /**
     * 修改值班类型
     */
    @PreAuthorize("@ss.hasPermi('duty:duty:edit')")
    @Log(title = "值班类型", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysDuty sysDuty) {
        sysDuty.setUpdateBy(getUsername());
        return toAjax(sysDutyService.updateSysDuty(sysDuty));
    }

    /**
     * 删除值班类型
     */
    @PreAuthorize("@ss.hasPermi('duty:duty:remove')")
    @Log(title = "值班类型", businessType = BusinessType.DELETE)
    @DeleteMapping("/{dutyIds}")
    public AjaxResult remove(@PathVariable Long[] dutyIds) {
        return toAjax(sysDutyService.deleteSysDutyByDutyIds(dutyIds));
    }
}
