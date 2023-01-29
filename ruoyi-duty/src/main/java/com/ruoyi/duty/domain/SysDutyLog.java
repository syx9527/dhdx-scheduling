package com.ruoyi.duty.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 值班记录对象 sys_duty_log
 * 
 * @author ruoyi
 * @date 2023-01-30
 */
public class SysDutyLog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 值班日志主键 */
    private Long logId;

    /** 值班类型id */
    @Excel(name = "值班类型id")
    private Long dutyId;

    /** 值班类型名称 */
    @Excel(name = "值班类型名称")
    private String dutyName;

    /** 值班人员ID */
    @Excel(name = "值班人员ID")
    private Long userId;

    /** 值班人员姓名 */
    @Excel(name = "值班人员姓名")
    private String userName;

    /** 部门id */
    @Excel(name = "部门id")
    private Long deptId;

    /** 部门名称 */
    @Excel(name = "部门名称")
    private String deptName;

    /** 值班开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "值班开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** 值班结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "值班结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    public void setLogId(Long logId) 
    {
        this.logId = logId;
    }

    public Long getLogId() 
    {
        return logId;
    }
    public void setDutyId(Long dutyId) 
    {
        this.dutyId = dutyId;
    }

    public Long getDutyId() 
    {
        return dutyId;
    }
    public void setDutyName(String dutyName) 
    {
        this.dutyName = dutyName;
    }

    public String getDutyName() 
    {
        return dutyName;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setUserName(String userName) 
    {
        this.userName = userName;
    }

    public String getUserName() 
    {
        return userName;
    }
    public void setDeptId(Long deptId) 
    {
        this.deptId = deptId;
    }

    public Long getDeptId() 
    {
        return deptId;
    }
    public void setDeptName(String deptName) 
    {
        this.deptName = deptName;
    }

    public String getDeptName() 
    {
        return deptName;
    }
    public void setStartTime(Date startTime) 
    {
        this.startTime = startTime;
    }

    public Date getStartTime() 
    {
        return startTime;
    }
    public void setEndTime(Date endTime) 
    {
        this.endTime = endTime;
    }

    public Date getEndTime() 
    {
        return endTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("logId", getLogId())
            .append("dutyId", getDutyId())
            .append("dutyName", getDutyName())
            .append("userId", getUserId())
            .append("userName", getUserName())
            .append("deptId", getDeptId())
            .append("deptName", getDeptName())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .toString();
    }
}
