package com.ruoyi.duty.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 值班类型对象 sys_duty
 * 
 * @author ruoyi
 * @date 2023-01-28
 */
public class SysDuty extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** del_flag */
    private Long dutyId;

    /** 值班类型 */
    @Excel(name = "值班类型")
    private String dutyType;

    /** 显示顺序 */
    @Excel(name = "显示顺序")
    private Long dutySort;

    public void setDutyId(Long dutyId) 
    {
        this.dutyId = dutyId;
    }

    public Long getDutyId() 
    {
        return dutyId;
    }
    public void setDutyType(String dutyType) 
    {
        this.dutyType = dutyType;
    }

    public String getDutyType() 
    {
        return dutyType;
    }
    public void setDutySort(Long dutySort) 
    {
        this.dutySort = dutySort;
    }

    public Long getDutySort() 
    {
        return dutySort;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("dutyId", getDutyId())
            .append("dutyType", getDutyType())
            .append("dutySort", getDutySort())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
