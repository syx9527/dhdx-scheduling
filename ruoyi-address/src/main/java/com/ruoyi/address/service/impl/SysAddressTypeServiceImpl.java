package com.ruoyi.address.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.address.mapper.SysAddressTypeMapper;
import com.ruoyi.address.domain.SysAddressType;
import com.ruoyi.address.service.ISysAddressTypeService;

/**
 * 地址类型Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-01-29
 */
@Service
public class SysAddressTypeServiceImpl implements ISysAddressTypeService 
{
    @Autowired
    private SysAddressTypeMapper sysAddressTypeMapper;

    /**
     * 查询地址类型
     * 
     * @param addressTypeId 地址类型主键
     * @return 地址类型
     */
    @Override
    public SysAddressType selectSysAddressTypeByAddressTypeId(Long addressTypeId)
    {
        return sysAddressTypeMapper.selectSysAddressTypeByAddressTypeId(addressTypeId);
    }

    /**
     * 查询地址类型列表
     * 
     * @param sysAddressType 地址类型
     * @return 地址类型
     */
    @Override
    public List<SysAddressType> selectSysAddressTypeList(SysAddressType sysAddressType)
    {
        return sysAddressTypeMapper.selectSysAddressTypeList(sysAddressType);
    }

    /**
     * 新增地址类型
     * 
     * @param sysAddressType 地址类型
     * @return 结果
     */
    @Override
    public int insertSysAddressType(SysAddressType sysAddressType)
    {
        return sysAddressTypeMapper.insertSysAddressType(sysAddressType);
    }

    /**
     * 修改地址类型
     * 
     * @param sysAddressType 地址类型
     * @return 结果
     */
    @Override
    public int updateSysAddressType(SysAddressType sysAddressType)
    {
        return sysAddressTypeMapper.updateSysAddressType(sysAddressType);
    }

    /**
     * 批量删除地址类型
     * 
     * @param addressTypeIds 需要删除的地址类型主键
     * @return 结果
     */
    @Override
    public int deleteSysAddressTypeByAddressTypeIds(Long[] addressTypeIds)
    {
        return sysAddressTypeMapper.deleteSysAddressTypeByAddressTypeIds(addressTypeIds);
    }

    /**
     * 删除地址类型信息
     * 
     * @param addressTypeId 地址类型主键
     * @return 结果
     */
    @Override
    public int deleteSysAddressTypeByAddressTypeId(Long addressTypeId)
    {
        return sysAddressTypeMapper.deleteSysAddressTypeByAddressTypeId(addressTypeId);
    }
}
