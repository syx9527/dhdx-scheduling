package com.ruoyi.address.service;

import java.util.List;
import com.ruoyi.address.domain.SysAddressTypeList;

/**
 * 地址-类型Service接口
 * 
 * @author ruoyi
 * @date 2023-01-29
 */
public interface ISysAddressTypeListService 
{
    /**
     * 查询地址-类型
     * 
     * @param id 地址-类型主键
     * @return 地址-类型
     */
    public SysAddressTypeList selectSysAddressTypeListById(Long id);

    /**
     * 查询地址-类型列表
     * 
     * @param sysAddressTypeList 地址-类型
     * @return 地址-类型集合
     */
    public List<SysAddressTypeList> selectSysAddressTypeListList(SysAddressTypeList sysAddressTypeList);

    /**
     * 新增地址-类型
     * 
     * @param sysAddressTypeList 地址-类型
     * @return 结果
     */
    public int insertSysAddressTypeList(SysAddressTypeList sysAddressTypeList);

    /**
     * 修改地址-类型
     * 
     * @param sysAddressTypeList 地址-类型
     * @return 结果
     */
    public int updateSysAddressTypeList(SysAddressTypeList sysAddressTypeList);

    /**
     * 批量删除地址-类型
     * 
     * @param ids 需要删除的地址-类型主键集合
     * @return 结果
     */
    public int deleteSysAddressTypeListByIds(Long[] ids);

    /**
     * 删除地址-类型信息
     * 
     * @param id 地址-类型主键
     * @return 结果
     */
    public int deleteSysAddressTypeListById(Long id);
}
