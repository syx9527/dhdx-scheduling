package com.ruoyi.duty.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.core.domain.entity.SysDept;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.system.domain.SysMajor;
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
public class SysDutyLog extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 值班日志主键
     */
    private Long logId;

    /**
     * 值班类型id
     */
    @Excel(name = "值班类型id")
    private Long dutyId;

    /**
     * 值班类型名称
     */
    private String dutyName;

    public SysDutyLog() {
    }

    public String getDutyName() {
        return dutyName;
    }

    public void setDutyName(String dutyName) {
        this.dutyName = dutyName;
    }

    @Excel(name = "值班类型名称", targetAttr = "dutyType")
    private SysDuty duty;

    public Long getMajorId() {
        return majorId;
    }

    public void setMajorId(Long majorId) {
        this.majorId = majorId;
    }

    public SysMajor getMajor() {
        return major;
    }

    public void setMajor(SysMajor major) {
        this.major = major;
    }

    /**
     * 值班人员ID
     */
    @Excel(name = "值班人员ID")
    private Long userId;

    /**
     * 值班领导
     */
    private SysUser deptDutyBoss;

    public SysUser getDeptDutyBoss() {
        return deptDutyBoss;
    }

    public void setDeptDutyBoss(SysUser deptDutyBoss) {
        this.deptDutyBoss = deptDutyBoss;
    }

    public SysDuty getDuty() {
        return duty;
    }

    public void setDuty(SysDuty duty) {
        this.duty = duty;
    }

    public SysUser getUser() {
        return user;
    }

    public void setUser(SysUser user) {
        this.user = user;
    }

    /**
     * 值班人员姓名
     */
    @Excel(name = "值班人员姓名", targetAttr = "nickName")
    private SysUser user;
    private String nickName;

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    /**
     * 部门id
     */
    private Long deptId;

    /**
     * 部门名称
     */
    @Excel(name = "部门名称", targetAttr = "deptName")
    private SysDept dept;

    /**
     * 专业id
     */
    private Long majorId;


    /**
     * zhu 专业对象
     */
    @Excel(name = "专业", targetAttr = "majorName")
    private SysMajor major;

    /**
     * 值班开始时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "值班开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /**
     * 值班结束时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "值班结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    public void setLogId(Long logId) {
        this.logId = logId;
    }

    public Long getLogId() {
        return logId;
    }

    public void setDutyId(Long dutyId) {
        this.dutyId = dutyId;
    }

    public Long getDutyId() {
        return dutyId;
    }


    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getUserId() {
        return userId;
    }


    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

    public Long getDeptId() {
        return deptId;
    }

    public SysDept getDept() {
        return dept;
    }

    public void setDept(SysDept dept) {
        this.dept = dept;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("logId", getLogId())
                .append("dutyId", getDutyId())
                .append("dutyName", getDutyName())
                .append("userId", getUserId())
                .append("nickName", getNickName())
                .append("deptId", getDeptId())
                .append("startTime", getStartTime())
                .append("endTime", getEndTime())
                .toString();
    }

}
