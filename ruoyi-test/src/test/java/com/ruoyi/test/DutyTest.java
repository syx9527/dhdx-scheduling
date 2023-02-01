package com.ruoyi.test;

import com.ruoyi.RuoYiApplication;
import com.ruoyi.address.domain.SysAddress;
import com.ruoyi.address.service.ISysAddressService;
import com.ruoyi.duty.domain.SysDutyLog;
import com.ruoyi.duty.service.ISysDutyLogService;
import com.ruoyi.duty.service.ISysDutyService;
import com.ruoyi.system.service.ISysUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

/**
 * @author SYX
 * @date 2023/1/29
 */

@RunWith(SpringRunner.class)
@SpringBootTest(classes = {RuoYiApplication.class})
public class DutyTest {

    @Autowired
    private ISysAddressService sysAddressService;

    @Autowired
    private ISysUserService sysUserService;


    @Autowired
    private ISysDutyService sysDutyService;
    @Autowired
    private ISysDutyLogService sysDutyLogService;


    /**
     * 查询地址列表
     */

    @Test
    public void selectSysAddressListTest() {
        SysAddress sysAddress = new SysAddress();
        // sysAddress.setAddressName("州医院");
        List<SysAddress> list = sysAddressService.selectSysAddressList(sysAddress);
        System.out.println(list.size());
    }

    @Test
    public void add() {
        SysDutyLog sysDutyLog = new SysDutyLog();

        sysDutyLog.setDeptId(sysUserService.selectUserById(sysDutyLog.getUserId()).getDeptId());

        sysDutyLog.setDutyId(sysDutyService.selectSysDutyByDutyId(sysDutyLog.getDutyId()).getDutyId());
        // sysDutyLog.setCreateBy(getUsername());
        System.out.println("------------------");
        System.out.println(sysDutyLog);
        System.out.println("------------------");

        sysDutyLogService.insertSysDutyLog(sysDutyLog);
    }

}
