package com.ruoyi.wx.mapper;

import com.ruoyi.wx.domain.AbucoderWxuser;

import java.util.List;

/**
 * 微信用户Mapper接口
 *
 * @author ruoyi
 * @date 2023-02-06
 */
public interface AbucoderWxuserMapper
{
    /**
     * 查询微信用户
     *
     * @param id 微信用户主键
     * @return 微信用户
     */
    public AbucoderWxuser selectAbucoderWxuserById(Long id);

    /**
     * 查询微信用户列表
     *
     * @param abucoderWxuser 微信用户
     * @return 微信用户集合
     */
    public List<AbucoderWxuser> selectAbucoderWxuserList(AbucoderWxuser abucoderWxuser);

    /**
     * 新增微信用户
     *
     * @param abucoderWxuser 微信用户
     * @return 结果
     */
    public int insertAbucoderWxuser(AbucoderWxuser abucoderWxuser);

    /**
     * 修改微信用户
     *
     * @param abucoderWxuser 微信用户
     * @return 结果
     */
    public int updateAbucoderWxuser(AbucoderWxuser abucoderWxuser);

    /**
     * 删除微信用户
     *
     * @param id 微信用户主键
     * @return 结果
     */
    public int deleteAbucoderWxuserById(Long id);

    /**
     * 批量删除微信用户
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAbucoderWxuserByIds(Long[] ids);

    /**
     * 通过OpenID查询微信用户信息
     * @param openid
     * @return
     */
    public AbucoderWxuser selectAbucoderWxuserOpenID(String openid);
}
