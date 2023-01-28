package com.ruoyi.duty.service;

import java.util.List;
import com.ruoyi.duty.domain.SysDuty;

/**
 * 值班类型Service接口
 * 
 * @author ruoyi
 * @date 2023-01-28
 */
public interface ISysDutyService 
{
    /**
     * 查询值班类型
     * 
     * @param dutyId 值班类型主键
     * @return 值班类型
     */
    public SysDuty selectSysDutyByDutyId(Long dutyId);

    /**
     * 查询值班类型列表
     * 
     * @param sysDuty 值班类型
     * @return 值班类型集合
     */
    public List<SysDuty> selectSysDutyList(SysDuty sysDuty);

    /**
     * 新增值班类型
     * 
     * @param sysDuty 值班类型
     * @return 结果
     */
    public int insertSysDuty(SysDuty sysDuty);

    /**
     * 修改值班类型
     * 
     * @param sysDuty 值班类型
     * @return 结果
     */
    public int updateSysDuty(SysDuty sysDuty);

    /**
     * 批量删除值班类型
     * 
     * @param dutyIds 需要删除的值班类型主键集合
     * @return 结果
     */
    public int deleteSysDutyByDutyIds(Long[] dutyIds);

    /**
     * 删除值班类型信息
     * 
     * @param dutyId 值班类型主键
     * @return 结果
     */
    public int deleteSysDutyByDutyId(Long dutyId);
}
