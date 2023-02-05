package com.ruoyi.abuwx.controller;

import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.ruoyi.abuwx.domain.AbucoderWxappConfig;
import com.ruoyi.abuwx.domain.AbucoderWxuser;
import com.ruoyi.abuwx.service.IAbucoderWxappConfigService;
import com.ruoyi.abuwx.service.IAbucoderWxuserService;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.http.HttpUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.utils.uuid.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 微信用户Controller
 *
 * @author 阿卜Coder QQ932696181
 * @date 2022-06-26
 */
@RestController
@RequestMapping("/abuwx/wxuser")
public class AbucoderWxuserController extends BaseController
{
    @Autowired
    private IAbucoderWxuserService abucoderWxuserService;

    /**
     * 查询微信用户列表
     */
    @PreAuthorize("@ss.hasPermi('abuwx:wxuser:list')")
    @GetMapping("/list")
    public TableDataInfo list(AbucoderWxuser abucoderWxuser)
    {
        startPage();
        List<AbucoderWxuser> list = abucoderWxuserService.selectAbucoderWxuserList(abucoderWxuser);
        return getDataTable(list);
    }

    /**
     * 导出微信用户列表
     */
    @PreAuthorize("@ss.hasPermi('abuwx:wxuser:export')")
    @Log(title = "微信用户", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AbucoderWxuser abucoderWxuser)
    {
        List<AbucoderWxuser> list = abucoderWxuserService.selectAbucoderWxuserList(abucoderWxuser);
        ExcelUtil<AbucoderWxuser> util = new ExcelUtil<AbucoderWxuser>(AbucoderWxuser.class);
        util.exportExcel(response, list, "微信用户数据");
    }

    /**
     * 获取微信用户详细信息
     */
    @PreAuthorize("@ss.hasPermi('abuwx:wxuser:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(abucoderWxuserService.selectAbucoderWxuserById(id));
    }

    /**
     * 新增微信用户
     */
    @PreAuthorize("@ss.hasPermi('abuwx:wxuser:add')")
    @Log(title = "微信用户", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AbucoderWxuser abucoderWxuser)
    {
        return toAjax(abucoderWxuserService.insertAbucoderWxuser(abucoderWxuser));
    }

    /**
     * 修改微信用户
     */
    @PreAuthorize("@ss.hasPermi('abuwx:wxuser:edit')")
    @Log(title = "微信用户", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AbucoderWxuser abucoderWxuser)
    {
        return toAjax(abucoderWxuserService.updateAbucoderWxuser(abucoderWxuser));
    }

    /**
     * 删除微信用户
     */
    @PreAuthorize("@ss.hasPermi('abuwx:wxuser:remove')")
    @Log(title = "微信用户", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(abucoderWxuserService.deleteAbucoderWxuserByIds(ids));
    }

    @RestController
    @RequestMapping("/wxapi/")
    public static class WxLoginController {

        /**
         * 测试接口
         *
         * @return
         */
        @GetMapping("test")
        public AjaxResult test() {
            return AjaxResult.success("小程序api调试成功！~");
        }

        @Autowired
        private IAbucoderWxuserService iAbucoderWxuserService;

        @Autowired
        private IAbucoderWxappConfigService wxappConfigService;

        /**
         * 你自己的微信小程序APPID
         */

        // private final static String AppID = "wxafe035d3c21ea4ef";
        /**
         * 你自己的微信APP密钥
         */
        // private final static String AppSecret = "107ce806db62a8182f9270f3aa0b5c91";

        /**
         * 登录时获取的 code（微信官方提供的临时凭证）
         *
         * @param object
         * @return
         */
        @PostMapping("/wxlogin")
        public AjaxResult wxLogin(@RequestBody JSONObject object) {
            //微信官方提供的微信小程序登录授权时使用的URL地址
            String url = "https://api.weixin.qq.com/sns/jscode2session";
            System.out.println(object);
            /**
             * 拼接需要的参数
             * appid = AppID 你自己的微信小程序APPID
             * js_code = AppSecret 你自己的微信APP密钥
             * grant_type=authorization_code = code 微信官方提供的临时凭证
             */
            AbucoderWxappConfig wxconfig = wxappConfigService.selectAbucoderWxappConfig();
            String params = StrUtil.format("appid={}&secret={}&js_code={}&grant_type=authorization_code", wxconfig.getAppid(), wxconfig.getAppSecret(), object.get("code"));
            //开始发起网络请求,若依管理系统自带网络请求工具，直接使用即可
            String res = HttpUtils.sendGet(url, params);
            System.out.println("输出请求到的结果");
            System.out.println(res);
            JSONObject jsonObject = JSON.parseObject(res);
            String session_key = (String) jsonObject.get("session_key");
            String openid = (String) jsonObject.get("openid");
            if (StrUtil.isEmpty(openid)) {
                return AjaxResult.error("未获取到openid");
            }
            String token = UUID.randomUUID().toString();
            Map<String, Object> data = new HashMap<>();
            data.put("token", token);
            data.put("session_key", session_key);
            data.put("openid", openid);
            data.put("state", true);
            data.put("nickName", object.get("nickName"));
            data.put("avatarUrl", object.get("avatarUrl"));
            /**先通过openid来查询是否存在*/
            AbucoderWxuser abucoderWxuser = iAbucoderWxuserService.selectAbucoderWxuserOpenID(openid);
            if (abucoderWxuser == null) {
                /**如果不存在就插入到我们的数据库里*/
                AbucoderWxuser wxuser = new AbucoderWxuser();
                wxuser.setNickname(String.valueOf(object.get("nickName")));
                wxuser.setGender((Integer) object.get("gender"));
                wxuser.setAvatar(String.valueOf(object.get("avatarUrl")));
                wxuser.setOpenid(openid);
                wxuser.setCreateTime(DateUtils.getNowDate());
                wxuser.setCreateBy("Abu");
                iAbucoderWxuserService.insertAbucoderWxuser(wxuser);
            } else {
                /**如果存在就更新数据库里原有的数据*/
                abucoderWxuser.setNickname(String.valueOf(object.get("nickName")));
                abucoderWxuser.setGender((Integer) object.get("gender"));
                abucoderWxuser.setAvatar(String.valueOf(object.get("avatarUrl")));
                abucoderWxuser.setUpdateTime(DateUtils.getNowDate());
                abucoderWxuser.setUpdateBy("Abu");
                iAbucoderWxuserService.updateAbucoderWxuser(abucoderWxuser);
            }
            /**返回结果集到前段*/
            System.out.println("data"+ data);
            return AjaxResult.success(data);
        }
    }
}
