package com.ruoyi.web.controller.wx;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.wx.domain.AbucoderWxappConfig;
import com.ruoyi.wx.service.IAbucoderWxappConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 小程序配置Controller
 *
 * @author ruoyi
 * @date 2023-02-06
 */
@RestController
@RequestMapping("/wx/wxconfig")
public class AbucoderWxappConfigController extends BaseController
{
    @Autowired
    private IAbucoderWxappConfigService abucoderWxappConfigService;

    /**
     * 查询小程序配置列表
     */
    @PreAuthorize("@ss.hasPermi('wx:wxconfig:list')")
    @GetMapping("/list")
    public TableDataInfo list(AbucoderWxappConfig abucoderWxappConfig)
    {
        startPage();
        List<AbucoderWxappConfig> list = abucoderWxappConfigService.selectAbucoderWxappConfigList(abucoderWxappConfig);
        return getDataTable(list);
    }

    /**
     * 导出小程序配置列表
     */
    @PreAuthorize("@ss.hasPermi('wx:wxconfig:export')")
    @Log(title = "小程序配置", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AbucoderWxappConfig abucoderWxappConfig)
    {
        List<AbucoderWxappConfig> list = abucoderWxappConfigService.selectAbucoderWxappConfigList(abucoderWxappConfig);
        ExcelUtil<AbucoderWxappConfig> util = new ExcelUtil<AbucoderWxappConfig>(AbucoderWxappConfig.class);
        util.exportExcel(response, list, "小程序配置数据");
    }

    /**
     * 获取小程序配置详细信息
     */
    @PreAuthorize("@ss.hasPermi('wx:wxconfig:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(abucoderWxappConfigService.selectAbucoderWxappConfigById(id));
    }

    /**
     * 新增小程序配置
     */
    @PreAuthorize("@ss.hasPermi('wx:wxconfig:add')")
    @Log(title = "小程序配置", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AbucoderWxappConfig abucoderWxappConfig)
    {
        return toAjax(abucoderWxappConfigService.insertAbucoderWxappConfig(abucoderWxappConfig));
    }

    /**
     * 修改小程序配置
     */
    @PreAuthorize("@ss.hasPermi('wx:wxconfig:edit')")
    @Log(title = "小程序配置", businessType = BusinessType.UPDATE)
    // @PutMapping
    @PostMapping("/put")
    public AjaxResult edit(@RequestBody AbucoderWxappConfig abucoderWxappConfig)
    {
        return toAjax(abucoderWxappConfigService.updateAbucoderWxappConfig(abucoderWxappConfig));
    }

    /**
     * 删除小程序配置
     */
    @PreAuthorize("@ss.hasPermi('wx:wxconfig:remove')")
    @Log(title = "小程序配置", businessType = BusinessType.DELETE)
	 // @DeleteMapping("/{ids}")
	@PostMapping("/{ids}/delete")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(abucoderWxappConfigService.deleteAbucoderWxappConfigByIds(ids));
    }
}
