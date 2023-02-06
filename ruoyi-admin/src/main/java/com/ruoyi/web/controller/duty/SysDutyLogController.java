package com.ruoyi.web.controller.duty;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.duty.domain.SysDuty;
import com.ruoyi.duty.domain.SysDutyLog;
import com.ruoyi.duty.service.ISysDutyLogService;
import com.ruoyi.duty.service.ISysDutyService;
import com.ruoyi.system.service.ISysMajorService;
import com.ruoyi.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 值班记录Controller
 *
 * @author ruoyi
 * @date 2023-01-30
 */
@RestController
@RequestMapping("/duty/duty_log")
public class SysDutyLogController extends BaseController {
    @Autowired
    private ISysDutyLogService sysDutyLogService;

    @Autowired
    private ISysUserService sysUserService;

    @Autowired
    private ISysDutyService sysDutyService;

    private ISysMajorService sysMajorService;


    /**
     * 查询值班记录列表
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysDutyLog sysDutyLog) {

        startPage();
        List<SysDutyLog> list = sysDutyLogService.selectSysDutyLogList(sysDutyLog);

        return getDataTable(list);
    }

    /**
     * 首页
     * 查询值班记录列表
     */

    @GetMapping("/list/index")
    public TableDataInfo listIndex() {
        SysDutyLog sysDutyLog = new SysDutyLog();
        List<SysDutyLog> list = sysDutyLogService.selectSysDutyLogList(sysDutyLog);
        List<SysDutyLog> resList = new ArrayList<>();
        Map<Long, SysUser> map = new HashMap<>();
        for (SysDutyLog dutyLog : list) {
            if (dutyLog.getDutyId() == 1L) {
                map.put(dutyLog.getDeptId(), dutyLog.getUser());
            } else {
                resList.add(dutyLog);
            }
        }
        resList.sort((o1, o2) -> {
            long a = o1.getDeptId() - o2.getDeptId();
            if (a != 0) {
                return a > 0 ? 1 : -1;
            }
            if (o1.getMajorId() != null | o2.getMajorId() != null) {
                a = o1.getMajorId() - o2.getMajorId();
                if (a != 0) {
                    return a > 0 ? 1 : -1;
                }
            }
            a = o1.getUserId() - o2.getUserId();
            if (a != 0) {
                return a > 0 ? 1 : -1;
            }
            return 0;
        });
        List<Map<String, Object>> resultLst = new ArrayList<>();
        for (SysDutyLog dutyLog : resList) {
            Map<String, Object> resultMap = new HashMap<>();
            dutyLog.setDeptDutyBoss(map.get(dutyLog.getDeptId()));
            resultMap.put("deptId", dutyLog.getDeptId());
            resultMap.put("deptName", dutyLog.getDept().getDeptName());

            if (dutyLog.getMajorId() != null) {
                resultMap.put("major_id", dutyLog.getMajorId());
                resultMap.put("major", dutyLog.getMajor().getMajorName());
            } else {
                resultMap.put("major_id", 0);
                resultMap.put("major", "-");
            }
            if (dutyLog.getDeptDutyBoss() != null) {
                resultMap.put("dutyLeaderId", dutyLog.getDeptDutyBoss().getUserId());
                resultMap.put("dutyLeaderName", dutyLog.getDeptDutyBoss().getNickName());
                resultMap.put("dutyLeaderPhone", dutyLog.getDeptDutyBoss().getPhonenumber());
            } else {
                resultMap.put("dutyLeaderId", "-");
                resultMap.put("dutyLeaderName", "-");
                resultMap.put("dutyLeaderPhone", "-");
            }
            resultMap.put("dutyUsernameId", dutyLog.getUser().getUserId());
            resultMap.put("dutyUsername", dutyLog.getUser().getNickName());
            resultMap.put("dutyUserPhone", dutyLog.getUser().getPhonenumber());
            resultMap.put("remark", dutyLog.getRemark());
            resultLst.add(resultMap);
        }
        return getDataTable(resultLst);
    }

    /**
     * 导出值班记录列表
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:export')")
    @Log(title = "值班记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysDutyLog sysDutyLog) {
        List<SysDutyLog> list = sysDutyLogService.selectSysDutyLogList(sysDutyLog);
        ExcelUtil<SysDutyLog> util = new ExcelUtil<SysDutyLog>(SysDutyLog.class);
        util.exportExcel(response, list, "值班记录数据");
    }

    /**
     * 获取值班记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:query')")
    @GetMapping(value = "/{logId}")
    public AjaxResult getInfo(@PathVariable("logId") Long logId) {
        return success(sysDutyLogService.selectSysDutyLogByLogId(logId));
    }

    /**
     * 新增值班记录
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:add')")
    @Log(title = "值班记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysDutyLog sysDutyLog) {
        if (sysDutyLog.getUserId() == null) {
            return error("用户不能为空");
        } else if (sysDutyLog.getDutyId() == null) {
            return error("值班类型不能为空");
        } else if (sysDutyLog.getStartTime() == null) {
            return error("开始时间不能为空");
        } else if (sysDutyLog.getEndTime() == null) {
            return error("结束时间不能为空");
        }

        SysUser sysUser = sysUserService.selectUserById(sysDutyLog.getUserId());
        SysDuty sysDuty = sysDutyService.selectSysDutyByDutyId(sysDutyLog.getDutyId());


        sysDutyLog.setDeptId(sysUser.getDeptId());

        sysDutyLog.setDutyId(sysDuty.getDutyId());

        sysDutyLog.setCreateBy(getUsername());

        return toAjax(sysDutyLogService.insertSysDutyLog(sysDutyLog));
    }

    /**
     * 修改值班记录
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:edit')")
    @Log(title = "值班记录", businessType = BusinessType.UPDATE)
    // @PutMapping
    @PostMapping("/put")
    public AjaxResult edit(@RequestBody SysDutyLog sysDutyLog) {


        sysDutyLog.setUpdateBy(getUsername());
        return toAjax(sysDutyLogService.updateSysDutyLog(sysDutyLog));
    }

    /**
     * 删除值班记录
     */
    @PreAuthorize("@ss.hasPermi('duty:duty_log:remove')")
    @Log(title = "值班记录", businessType = BusinessType.DELETE)
    // @DeleteMapping("/{logIds}")
    @PostMapping("/{logIds}/delete")
    public AjaxResult remove(@PathVariable Long[] logIds) {
        return toAjax(sysDutyLogService.deleteSysDutyLogByLogIds(logIds));
    }
}
