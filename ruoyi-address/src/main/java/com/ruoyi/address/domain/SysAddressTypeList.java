package com.ruoyi.address.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 地址-类型对象 sys_address_type_list
 * 
 * @author ruoyi
 * @date 2023-01-29
 */
public class SysAddressTypeList extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 地址名称 */
    @Excel(name = "地址名称")
    private Long addressId;

    /** 地址类型 */
    @Excel(name = "地址类型")
    private Long addressTypeId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setAddressId(Long addressId) 
    {
        this.addressId = addressId;
    }

    public Long getAddressId() 
    {
        return addressId;
    }
    public void setAddressTypeId(Long addressTypeId) 
    {
        this.addressTypeId = addressTypeId;
    }

    public Long getAddressTypeId() 
    {
        return addressTypeId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("addressId", getAddressId())
            .append("addressTypeId", getAddressTypeId())
            .toString();
    }
}
