package com.ruoyi.system.mapper;



/**
 * 用户表 数据层
 *
 * @author ruoyi
 */
public interface SysUserDutyLogMapper {
    /**
     * 通过用户ID删除用户和值班记录关联
     *
     * @param userId 用户ID
     * @return 结果
     */
    public int deleteUserDutyLogByUserId(Long userId);


    /**
     * 批量删除用户和值班记录关联
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteUserDutyLog(Long[] ids);


}
