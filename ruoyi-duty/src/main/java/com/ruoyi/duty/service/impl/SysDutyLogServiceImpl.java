package com.ruoyi.duty.service.impl;

import java.util.List;

import com.ruoyi.common.annotation.DataScope;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.duty.mapper.SysDutyLogMapper;
import com.ruoyi.duty.domain.SysDutyLog;
import com.ruoyi.duty.service.ISysDutyLogService;

/**
 * 值班记录Service业务层处理
 *
 * @author ruoyi
 * @date 2023-01-30
 */
@Service
public class SysDutyLogServiceImpl implements ISysDutyLogService {
    @Autowired
    private SysDutyLogMapper sysDutyLogMapper;

    /**
     * 查询值班记录
     *
     * @param logId 值班记录主键
     * @return 值班记录
     */
    @Override
    @DataScope(deptAlias = "d", userAlias = "u")
    public SysDutyLog selectSysDutyLogByLogId(Long logId) {
        return sysDutyLogMapper.selectSysDutyLogByLogId(logId);
    }

    /**
     * 查询值班记录列表
     *
     * @param sysDutyLog 值班记录
     * @return 值班记录
     */
    @Override
    @DataScope(deptAlias = "d", userAlias = "u")
    public List<SysDutyLog> selectSysDutyLogList(SysDutyLog sysDutyLog) {
        return sysDutyLogMapper.selectSysDutyLogList(sysDutyLog);
    }

    /**
     * 新增值班记录
     *
     * @param sysDutyLog 值班记录
     * @return 结果
     */
    @Override
    public int insertSysDutyLog(SysDutyLog sysDutyLog) {
        return sysDutyLogMapper.insertSysDutyLog(sysDutyLog);
    }

    /**
     * 修改值班记录
     *
     * @param sysDutyLog 值班记录
     * @return 结果
     */
    @Override
    public int updateSysDutyLog(SysDutyLog sysDutyLog) {
        return sysDutyLogMapper.updateSysDutyLog(sysDutyLog);
    }

    /**
     * 批量删除值班记录
     *
     * @param logIds 需要删除的值班记录主键
     * @return 结果
     */
    @Override
    public int deleteSysDutyLogByLogIds(Long[] logIds) {
        return sysDutyLogMapper.deleteSysDutyLogByLogIds(logIds);
    }

    /**
     * 删除值班记录信息
     *
     * @param logId 值班记录主键
     * @return 结果
     */
    @Override
    public int deleteSysDutyLogByLogId(Long logId) {
        return sysDutyLogMapper.deleteSysDutyLogByLogId(logId);
    }
}
