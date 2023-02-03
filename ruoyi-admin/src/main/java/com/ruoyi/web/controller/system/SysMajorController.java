package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.SysMajor;
import com.ruoyi.system.service.ISysMajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 专业Controller
 *
 * @author ruoyi
 * @date 2023-02-03
 */
@RestController
@RequestMapping("/system/major")
public class SysMajorController extends BaseController {
    @Autowired
    private ISysMajorService sysMajorService;

    /**
     * 查询专业列表
     */
    @PreAuthorize("@ss.hasPermi('system:major:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysMajor sysMajor) {
        startPage();
        // sysMajor.getParams("deptName")
        // sysMajor.se
        List<SysMajor> list = sysMajorService.selectSysMajorList(sysMajor);
        return getDataTable(list);
    }


    /**
     * 导出专业列表
     */
    @PreAuthorize("@ss.hasPermi('system:major:export')")
    @Log(title = "专业", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysMajor sysMajor) {
        List<SysMajor> list = sysMajorService.selectSysMajorList(sysMajor);
        ExcelUtil<SysMajor> util = new ExcelUtil<SysMajor>(SysMajor.class);
        util.exportExcel(response, list, "专业数据");
    }

    /**
     * 获取专业详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:major:query')")
    @GetMapping(value = "/{majorId}")
    public AjaxResult getInfo(@PathVariable("majorId") Long majorId) {
        return success(sysMajorService.selectSysMajorByMajorId(majorId));
    }

    /**
     * 新增专业
     */
    @PreAuthorize("@ss.hasPermi('system:major:add')")
    @Log(title = "专业", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysMajor sysMajor) {
        return toAjax(sysMajorService.insertSysMajor(sysMajor));
    }

    /**
     * 修改专业
     */
    @PreAuthorize("@ss.hasPermi('system:major:edit')")
    @Log(title = "专业", businessType = BusinessType.UPDATE)
    // @PutMapping
    @PostMapping("/put")
    public AjaxResult edit(@RequestBody SysMajor sysMajor) {
        return toAjax(sysMajorService.updateSysMajor(sysMajor));
    }


    /**
     * 状态修改
     */
    @PreAuthorize("@ss.hasPermi('system:major:edit')")
    @Log(title = "专业", businessType = BusinessType.UPDATE)
    // @PutMapping("/changeStatus")
    @PostMapping("/changeStatus/put")
    public AjaxResult changeStatus(@RequestBody SysMajor sysMajor) {
        sysMajor.setUpdateBy(getUsername());
        return toAjax(sysMajorService.updateSysMajor(sysMajor));
    }

    /**
     * 删除专业
     */
    @PreAuthorize("@ss.hasPermi('system:major:remove')")
    @Log(title = "专业", businessType = BusinessType.DELETE)
    // @DeleteMapping("/{majorIds}")
    @PostMapping("/{majorIds}/delete")
    public AjaxResult remove(@PathVariable Long[] majorIds) {
        return toAjax(sysMajorService.deleteSysMajorByMajorIds(majorIds));
    }
}
