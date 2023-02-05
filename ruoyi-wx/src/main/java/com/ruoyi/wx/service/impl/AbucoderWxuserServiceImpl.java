package com.ruoyi.wx.service.impl;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.wx.domain.AbucoderWxuser;
import com.ruoyi.wx.mapper.AbucoderWxuserMapper;
import com.ruoyi.wx.service.IAbucoderWxuserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 微信用户Service业务层处理
 *
 * @author ruoyi
 * @date 2023-02-06
 */
@Service
public class AbucoderWxuserServiceImpl implements IAbucoderWxuserService
{
    @Autowired
    private AbucoderWxuserMapper abucoderWxuserMapper;

    /**
     * 查询微信用户
     *
     * @param id 微信用户主键
     * @return 微信用户
     */
    @Override
    public AbucoderWxuser selectAbucoderWxuserById(Long id)
    {
        return abucoderWxuserMapper.selectAbucoderWxuserById(id);
    }

    /**
     * 查询微信用户列表
     *
     * @param abucoderWxuser 微信用户
     * @return 微信用户
     */
    @Override
    public List<AbucoderWxuser> selectAbucoderWxuserList(AbucoderWxuser abucoderWxuser)
    {
        return abucoderWxuserMapper.selectAbucoderWxuserList(abucoderWxuser);
    }

    /**
     * 新增微信用户
     *
     * @param abucoderWxuser 微信用户
     * @return 结果
     */
    @Override
    public int insertAbucoderWxuser(AbucoderWxuser abucoderWxuser)
    {
        abucoderWxuser.setCreateTime(DateUtils.getNowDate());
        return abucoderWxuserMapper.insertAbucoderWxuser(abucoderWxuser);
    }

    /**
     * 修改微信用户
     *
     * @param abucoderWxuser 微信用户
     * @return 结果
     */
    @Override
    public int updateAbucoderWxuser(AbucoderWxuser abucoderWxuser)
    {
        abucoderWxuser.setUpdateTime(DateUtils.getNowDate());
        return abucoderWxuserMapper.updateAbucoderWxuser(abucoderWxuser);
    }

    /**
     * 批量删除微信用户
     *
     * @param ids 需要删除的微信用户主键
     * @return 结果
     */
    @Override
    public int deleteAbucoderWxuserByIds(Long[] ids)
    {
        return abucoderWxuserMapper.deleteAbucoderWxuserByIds(ids);
    }

    /**
     * 删除微信用户信息
     *
     * @param id 微信用户主键
     * @return 结果
     */
    @Override
    public int deleteAbucoderWxuserById(Long id)
    {
        return abucoderWxuserMapper.deleteAbucoderWxuserById(id);
    }


    /**
     * 通过OpenID查询微信用户信息
     * @param openid
     * @return
     */
    @Override
    public AbucoderWxuser selectAbucoderWxuserOpenID(String openid) {
        return abucoderWxuserMapper.selectAbucoderWxuserOpenID(openid);
    }
}
