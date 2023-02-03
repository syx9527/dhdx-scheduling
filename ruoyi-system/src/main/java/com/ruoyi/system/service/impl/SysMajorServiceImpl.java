package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.annotation.DataScope;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysMajorMapper;
import com.ruoyi.system.domain.SysMajor;
import com.ruoyi.system.service.ISysMajorService;

/**
 * 专业Service业务层处理
 *
 * @author ruoyi
 * @date 2023-02-03
 */
@Service
public class SysMajorServiceImpl implements ISysMajorService {
    @Autowired
    private SysMajorMapper sysMajorMapper;

    /**
     * 查询专业
     *
     * @param majorId 专业主键
     * @return 专业
     */
    @Override
    @DataScope(deptAlias = "d")
    public SysMajor selectSysMajorByMajorId(Long majorId) {
        return sysMajorMapper.selectSysMajorByMajorId(majorId);
    }

    /**
     * 查询专业列表
     *
     * @param sysMajor 专业
     * @return 专业
     */
    @Override
    public List<SysMajor> selectSysMajorList(SysMajor sysMajor) {
        return sysMajorMapper.selectSysMajorList(sysMajor);
    }

    /**
     * 新增专业
     *
     * @param sysMajor 专业
     * @return 结果
     */
    @Override
    public int insertSysMajor(SysMajor sysMajor) {
        sysMajor.setCreateTime(DateUtils.getNowDate());
        return sysMajorMapper.insertSysMajor(sysMajor);
    }

    /**
     * 修改专业
     *
     * @param sysMajor 专业
     * @return 结果
     */
    @Override
    public int updateSysMajor(SysMajor sysMajor) {
        sysMajor.setUpdateTime(DateUtils.getNowDate());
        return sysMajorMapper.updateSysMajor(sysMajor);
    }

    /**
     * 批量删除专业
     *
     * @param majorIds 需要删除的专业主键
     * @return 结果
     */
    @Override
    public int deleteSysMajorByMajorIds(Long[] majorIds) {
        return sysMajorMapper.deleteSysMajorByMajorIds(majorIds);
    }

    /**
     * 删除专业信息
     *
     * @param majorId 专业主键
     * @return 结果
     */
    @Override
    public int deleteSysMajorByMajorId(Long majorId) {
        return sysMajorMapper.deleteSysMajorByMajorId(majorId);
    }
}
