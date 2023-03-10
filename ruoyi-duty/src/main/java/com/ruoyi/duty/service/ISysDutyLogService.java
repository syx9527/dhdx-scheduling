package com.ruoyi.duty.service;

import java.util.List;
import com.ruoyi.duty.domain.SysDutyLog;

/**
 * 值班记录Service接口
 * 
 * @author ruoyi
 * @date 2023-01-30
 */
public interface ISysDutyLogService 
{
    /**
     * 查询值班记录
     * 
     * @param logId 值班记录主键
     * @return 值班记录
     */
    public SysDutyLog selectSysDutyLogByLogId(Long logId);

    /**
     * 查询值班记录列表
     * 
     * @param sysDutyLog 值班记录
     * @return 值班记录集合
     */
    public List<SysDutyLog> selectSysDutyLogList(SysDutyLog sysDutyLog);

    /**
     * 新增值班记录
     * 
     * @param sysDutyLog 值班记录
     * @return 结果
     */
    public int insertSysDutyLog(SysDutyLog sysDutyLog);

    /**
     * 修改值班记录
     * 
     * @param sysDutyLog 值班记录
     * @return 结果
     */
    public int updateSysDutyLog(SysDutyLog sysDutyLog);

    /**
     * 批量删除值班记录
     * 
     * @param logIds 需要删除的值班记录主键集合
     * @return 结果
     */
    public int deleteSysDutyLogByLogIds(Long[] logIds);

    /**
     * 删除值班记录信息
     * 
     * @param logId 值班记录主键
     * @return 结果
     */
    public int deleteSysDutyLogByLogId(Long logId);
}
