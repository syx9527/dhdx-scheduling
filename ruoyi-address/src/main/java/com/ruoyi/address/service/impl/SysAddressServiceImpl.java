package com.ruoyi.address.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.address.mapper.SysAddressMapper;
import com.ruoyi.address.domain.SysAddress;
import com.ruoyi.address.service.ISysAddressService;

/**
 * 地址Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-01-29
 */
@Service
public class SysAddressServiceImpl implements ISysAddressService 
{
    @Autowired
    private SysAddressMapper sysAddressMapper;

    /**
     * 查询地址
     * 
     * @param addressId 地址主键
     * @return 地址
     */
    @Override
    public SysAddress selectSysAddressByAddressId(Long addressId)
    {
        return sysAddressMapper.selectSysAddressByAddressId(addressId);
    }

    /**
     * 查询地址列表
     * 
     * @param sysAddress 地址
     * @return 地址
     */
    @Override
    public List<SysAddress> selectSysAddressList(SysAddress sysAddress)
    {
        return sysAddressMapper.selectSysAddressList(sysAddress);
    }

    /**
     * 新增地址
     * 
     * @param sysAddress 地址
     * @return 结果
     */
    @Override
    public int insertSysAddress(SysAddress sysAddress)
    {
        return sysAddressMapper.insertSysAddress(sysAddress);
    }

    /**
     * 修改地址
     * 
     * @param sysAddress 地址
     * @return 结果
     */
    @Override
    public int updateSysAddress(SysAddress sysAddress)
    {
        return sysAddressMapper.updateSysAddress(sysAddress);
    }

    /**
     * 批量删除地址
     * 
     * @param addressIds 需要删除的地址主键
     * @return 结果
     */
    @Override
    public int deleteSysAddressByAddressIds(Long[] addressIds)
    {
        return sysAddressMapper.deleteSysAddressByAddressIds(addressIds);
    }

    /**
     * 删除地址信息
     * 
     * @param addressId 地址主键
     * @return 结果
     */
    @Override
    public int deleteSysAddressByAddressId(Long addressId)
    {
        return sysAddressMapper.deleteSysAddressByAddressId(addressId);
    }
}
