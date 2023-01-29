package com.ruoyi;

import com.ruoyi.address.domain.SysAddress;
import com.ruoyi.address.service.ISysAddressService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @author SYX
 * @date 2023/1/29
 */

@RunWith(SpringRunner.class)
@SpringBootTest(classes = {RuoYiApplication.class})
public class AddressTest {

    @Autowired
    private ISysAddressService sysAddressService;

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


}
