package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.SysMajor;

/**
 * 专业Mapper接口
 * 
 * @author ruoyi
 * @date 2023-02-03
 */
public interface SysMajorMapper 
{
    /**
     * 查询专业
     * 
     * @param majorId 专业主键
     * @return 专业
     */
    public SysMajor selectSysMajorByMajorId(Long majorId);

    /**
     * 查询专业列表
     * 
     * @param sysMajor 专业
     * @return 专业集合
     */
    public List<SysMajor> selectSysMajorList(SysMajor sysMajor);

    /**
     * 新增专业
     * 
     * @param sysMajor 专业
     * @return 结果
     */
    public int insertSysMajor(SysMajor sysMajor);

    /**
     * 修改专业
     * 
     * @param sysMajor 专业
     * @return 结果
     */
    public int updateSysMajor(SysMajor sysMajor);

    /**
     * 删除专业
     * 
     * @param majorId 专业主键
     * @return 结果
     */
    public int deleteSysMajorByMajorId(Long majorId);

    /**
     * 批量删除专业
     * 
     * @param majorIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysMajorByMajorIds(Long[] majorIds);
}
