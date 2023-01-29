package com.ruoyi.address.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.util.List;

/**
 * 地址对象 sys_address
 *
 * @author ruoyi
 * @date 2023-01-29
 */
public class SysAddress extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 地址id
     */
    private Long addressId;

    /**
     * 地址名称
     */
    @Excel(name = "地址名称")
    private String addressName;

    /**
     * 地址位置
     */
    @Excel(name = "地址位置")
    private String adrressLocal;

    @Excel(name = "类别")
    private List<SysAddressType> typeList;

    public List<SysAddressType> getTypeList() {
        return typeList;
    }

    public void setTypeList(List<SysAddressType> typeList) {
        this.typeList = typeList;
    }

    public void setAddressId(Long addressId) {
        this.addressId = addressId;
    }

    public Long getAddressId() {
        return addressId;
    }

    public void setAddressName(String addressName) {
        this.addressName = addressName;
    }

    public String getAddressName() {
        return addressName;
    }

    public void setAdrressLocal(String adrressLocal) {
        this.adrressLocal = adrressLocal;
    }

    public String getAdrressLocal() {
        return adrressLocal;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("addressId", getAddressId())
                .append("addressName", getAddressName())
                .append("adrressLocal", getAdrressLocal())
                .append("typeList", getTypeList())
                .toString();
    }
}
