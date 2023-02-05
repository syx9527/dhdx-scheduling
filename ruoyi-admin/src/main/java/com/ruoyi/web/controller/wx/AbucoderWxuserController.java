package com.ruoyi.web.controller.wx;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.wx.domain.AbucoderWxuser;
import com.ruoyi.wx.service.IAbucoderWxuserService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 微信用户Controller
 *
 * @author ruoyi
 * @date 2023-02-06
 */
@RestController
@RequestMapping("/wx/wxuser")
public class AbucoderWxuserController extends BaseController
{
    @Autowired
    private IAbucoderWxuserService abucoderWxuserService;

    /**
     * 查询微信用户列表
     */
    @PreAuthorize("@ss.hasPermi('wx:wxuser:list')")
    @GetMapping("/list")
    public TableDataInfo list(AbucoderWxuser abucoderWxuser)
    {
        startPage();
        List<AbucoderWxuser> list = abucoderWxuserService.selectAbucoderWxuserList(abucoderWxuser);
        return getDataTable(list);
    }

    /**
     * 导出微信用户列表
     */
    @PreAuthorize("@ss.hasPermi('wx:wxuser:export')")
    @Log(title = "微信用户", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AbucoderWxuser abucoderWxuser)
    {
        List<AbucoderWxuser> list = abucoderWxuserService.selectAbucoderWxuserList(abucoderWxuser);
        ExcelUtil<AbucoderWxuser> util = new ExcelUtil<AbucoderWxuser>(AbucoderWxuser.class);
        util.exportExcel(response, list, "微信用户数据");
    }

    /**
     * 获取微信用户详细信息
     */
    @PreAuthorize("@ss.hasPermi('wx:wxuser:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(abucoderWxuserService.selectAbucoderWxuserById(id));
    }

    /**
     * 新增微信用户
     */
    @PreAuthorize("@ss.hasPermi('wx:wxuser:add')")
    @Log(title = "微信用户", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AbucoderWxuser abucoderWxuser)
    {
        return toAjax(abucoderWxuserService.insertAbucoderWxuser(abucoderWxuser));
    }

    /**
     * 修改微信用户
     */
    @PreAuthorize("@ss.hasPermi('wx:wxuser:edit')")
    @Log(title = "微信用户", businessType = BusinessType.UPDATE)
    // @PutMapping
    @PostMapping("/put")
    public AjaxResult edit(@RequestBody AbucoderWxuser abucoderWxuser)
    {
        return toAjax(abucoderWxuserService.updateAbucoderWxuser(abucoderWxuser));
    }

    /**
     * 删除微信用户
     */
    @PreAuthorize("@ss.hasPermi('wx:wxuser:remove')")
    @Log(title = "微信用户", businessType = BusinessType.DELETE)
	 // @DeleteMapping("/{ids}")
	@PostMapping("/{ids}/delete")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(abucoderWxuserService.deleteAbucoderWxuserByIds(ids));
    }
}
