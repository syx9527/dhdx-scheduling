package com.ruoyi.address.mapper;

import java.util.List;
import com.ruoyi.address.domain.SysAddress;

/**
 * 地址Mapper接口
 * 
 * @author ruoyi
 * @date 2023-01-29
 */
public interface SysAddressMapper 
{
    /**
     * 查询地址
     * 
     * @param addressId 地址主键
     * @return 地址
     */
    public SysAddress selectSysAddressByAddressId(Long addressId);

    /**
     * 查询地址列表
     * 
     * @param sysAddress 地址
     * @return 地址集合
     */
    public List<SysAddress> selectSysAddressList(SysAddress sysAddress);

    /**
     * 新增地址
     * 
     * @param sysAddress 地址
     * @return 结果
     */
    public int insertSysAddress(SysAddress sysAddress);

    /**
     * 修改地址
     * 
     * @param sysAddress 地址
     * @return 结果
     */
    public int updateSysAddress(SysAddress sysAddress);

    /**
     * 删除地址
     * 
     * @param addressId 地址主键
     * @return 结果
     */
    public int deleteSysAddressByAddressId(Long addressId);

    /**
     * 批量删除地址
     * 
     * @param addressIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysAddressByAddressIds(Long[] addressIds);
}
