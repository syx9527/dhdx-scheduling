package com.ruoyi.address.service;

import java.util.List;
import com.ruoyi.address.domain.SysAddressType;

/**
 * 地址类型Service接口
 * 
 * @author ruoyi
 * @date 2023-01-29
 */
public interface ISysAddressTypeService 
{
    /**
     * 查询地址类型
     * 
     * @param addressTypeId 地址类型主键
     * @return 地址类型
     */
    public SysAddressType selectSysAddressTypeByAddressTypeId(Long addressTypeId);

    /**
     * 查询地址类型列表
     * 
     * @param sysAddressType 地址类型
     * @return 地址类型集合
     */
    public List<SysAddressType> selectSysAddressTypeList(SysAddressType sysAddressType);

    /**
     * 新增地址类型
     * 
     * @param sysAddressType 地址类型
     * @return 结果
     */
    public int insertSysAddressType(SysAddressType sysAddressType);

    /**
     * 修改地址类型
     * 
     * @param sysAddressType 地址类型
     * @return 结果
     */
    public int updateSysAddressType(SysAddressType sysAddressType);

    /**
     * 批量删除地址类型
     * 
     * @param addressTypeIds 需要删除的地址类型主键集合
     * @return 结果
     */
    public int deleteSysAddressTypeByAddressTypeIds(Long[] addressTypeIds);

    /**
     * 删除地址类型信息
     * 
     * @param addressTypeId 地址类型主键
     * @return 结果
     */
    public int deleteSysAddressTypeByAddressTypeId(Long addressTypeId);
}
