package com.ruoyi.address.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.address.mapper.SysAddressTypeListMapper;
import com.ruoyi.address.domain.SysAddressTypeList;
import com.ruoyi.address.service.ISysAddressTypeListService;

/**
 * 地址-类型Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-01-29
 */
@Service
public class SysAddressTypeListServiceImpl implements ISysAddressTypeListService 
{
    @Autowired
    private SysAddressTypeListMapper sysAddressTypeListMapper;

    /**
     * 查询地址-类型
     * 
     * @param id 地址-类型主键
     * @return 地址-类型
     */
    @Override
    public SysAddressTypeList selectSysAddressTypeListById(Long id)
    {
        return sysAddressTypeListMapper.selectSysAddressTypeListById(id);
    }

    /**
     * 查询地址-类型列表
     * 
     * @param sysAddressTypeList 地址-类型
     * @return 地址-类型
     */
    @Override
    public List<SysAddressTypeList> selectSysAddressTypeListList(SysAddressTypeList sysAddressTypeList)
    {
        return sysAddressTypeListMapper.selectSysAddressTypeListList(sysAddressTypeList);
    }

    /**
     * 新增地址-类型
     * 
     * @param sysAddressTypeList 地址-类型
     * @return 结果
     */
    @Override
    public int insertSysAddressTypeList(SysAddressTypeList sysAddressTypeList)
    {
        return sysAddressTypeListMapper.insertSysAddressTypeList(sysAddressTypeList);
    }

    /**
     * 修改地址-类型
     * 
     * @param sysAddressTypeList 地址-类型
     * @return 结果
     */
    @Override
    public int updateSysAddressTypeList(SysAddressTypeList sysAddressTypeList)
    {
        return sysAddressTypeListMapper.updateSysAddressTypeList(sysAddressTypeList);
    }

    /**
     * 批量删除地址-类型
     * 
     * @param ids 需要删除的地址-类型主键
     * @return 结果
     */
    @Override
    public int deleteSysAddressTypeListByIds(Long[] ids)
    {
        return sysAddressTypeListMapper.deleteSysAddressTypeListByIds(ids);
    }

    /**
     * 删除地址-类型信息
     * 
     * @param id 地址-类型主键
     * @return 结果
     */
    @Override
    public int deleteSysAddressTypeListById(Long id)
    {
        return sysAddressTypeListMapper.deleteSysAddressTypeListById(id);
    }
}
