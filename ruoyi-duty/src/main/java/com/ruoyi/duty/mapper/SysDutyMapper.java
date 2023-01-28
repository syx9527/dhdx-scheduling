package com.ruoyi.duty.mapper;

import java.util.List;
import com.ruoyi.duty.domain.SysDuty;

/**
 * 值班类型Mapper接口
 * 
 * @author ruoyi
 * @date 2023-01-28
 */
public interface SysDutyMapper 
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
     * 删除值班类型
     * 
     * @param dutyId 值班类型主键
     * @return 结果
     */
    public int deleteSysDutyByDutyId(Long dutyId);

    /**
     * 批量删除值班类型
     * 
     * @param dutyIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysDutyByDutyIds(Long[] dutyIds);
}
