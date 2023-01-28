package com.ruoyi.duty.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.duty.mapper.SysDutyMapper;
import com.ruoyi.duty.domain.SysDuty;
import com.ruoyi.duty.service.ISysDutyService;

/**
 * 值班类型Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-01-28
 */
@Service
public class SysDutyServiceImpl implements ISysDutyService 
{
    @Autowired
    private SysDutyMapper sysDutyMapper;

    /**
     * 查询值班类型
     * 
     * @param dutyId 值班类型主键
     * @return 值班类型
     */
    @Override
    public SysDuty selectSysDutyByDutyId(Long dutyId)
    {
        return sysDutyMapper.selectSysDutyByDutyId(dutyId);
    }

    /**
     * 查询值班类型列表
     * 
     * @param sysDuty 值班类型
     * @return 值班类型
     */
    @Override
    public List<SysDuty> selectSysDutyList(SysDuty sysDuty)
    {
        return sysDutyMapper.selectSysDutyList(sysDuty);
    }

    /**
     * 新增值班类型
     * 
     * @param sysDuty 值班类型
     * @return 结果
     */
    @Override
    public int insertSysDuty(SysDuty sysDuty)
    {
        sysDuty.setCreateTime(DateUtils.getNowDate());
        return sysDutyMapper.insertSysDuty(sysDuty);
    }

    /**
     * 修改值班类型
     * 
     * @param sysDuty 值班类型
     * @return 结果
     */
    @Override
    public int updateSysDuty(SysDuty sysDuty)
    {
        sysDuty.setUpdateTime(DateUtils.getNowDate());
        return sysDutyMapper.updateSysDuty(sysDuty);
    }

    /**
     * 批量删除值班类型
     * 
     * @param dutyIds 需要删除的值班类型主键
     * @return 结果
     */
    @Override
    public int deleteSysDutyByDutyIds(Long[] dutyIds)
    {
        return sysDutyMapper.deleteSysDutyByDutyIds(dutyIds);
    }

    /**
     * 删除值班类型信息
     * 
     * @param dutyId 值班类型主键
     * @return 结果
     */
    @Override
    public int deleteSysDutyByDutyId(Long dutyId)
    {
        return sysDutyMapper.deleteSysDutyByDutyId(dutyId);
    }
}
