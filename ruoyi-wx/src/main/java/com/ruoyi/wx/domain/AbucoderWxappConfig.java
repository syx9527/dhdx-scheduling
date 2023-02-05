package com.ruoyi.wx.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 小程序配置对象 abucoder_wxapp_config
 * 
 * @author ruoyi
 * @date 2023-02-06
 */
public class AbucoderWxappConfig extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 小程序ID */
    @Excel(name = "小程序ID")
    private String appid;

    /** 小程序密钥 */
    @Excel(name = "小程序密钥")
    private String appSecret;

    /** 状态 */
    @Excel(name = "状态")
    private Long state;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setAppid(String appid) 
    {
        this.appid = appid;
    }

    public String getAppid() 
    {
        return appid;
    }
    public void setAppSecret(String appSecret) 
    {
        this.appSecret = appSecret;
    }

    public String getAppSecret() 
    {
        return appSecret;
    }
    public void setState(Long state) 
    {
        this.state = state;
    }

    public Long getState() 
    {
        return state;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("appid", getAppid())
            .append("appSecret", getAppSecret())
            .append("state", getState())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
