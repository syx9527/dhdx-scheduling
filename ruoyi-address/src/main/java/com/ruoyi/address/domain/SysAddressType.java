package com.ruoyi.address.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 地址类型对象 sys_address_type
 * 
 * @author ruoyi
 * @date 2023-01-29
 */
public class SysAddressType extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 地址类型id */
    private Long addressTypeId;

    /** 地址类型 */
    @Excel(name = "地址类型")
    private String addressTypeName;

    public void setAddressTypeId(Long addressTypeId) 
    {
        this.addressTypeId = addressTypeId;
    }

    public Long getAddressTypeId() 
    {
        return addressTypeId;
    }
    public void setAddressTypeName(String addressTypeName) 
    {
        this.addressTypeName = addressTypeName;
    }

    public String getAddressTypeName() 
    {
        return addressTypeName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("addressTypeId", getAddressTypeId())
            .append("addressTypeName", getAddressTypeName())
            .toString();
    }
}
