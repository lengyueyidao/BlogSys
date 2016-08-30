package com.jiahao.blog.controller;

import com.alibaba.fastjson.serializer.IntegerCodec;
import com.jiahao.blog.pojo.Setting;
import com.jiahao.blog.service.SettingService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2016/8/30.
 */
@Controller
@RequestMapping("/admin")
public class SettingController {

    @Resource
    private SettingService settingService;

    @RequestMapping(value = "/setting", method = RequestMethod.GET)
    public String setting(Model model) {

        Setting setting = settingService.getSetting();
        model.addAttribute("setting", setting);

        return "admin_setting";
    }

    @RequestMapping(value = "/setting", method = RequestMethod.POST)
    public String setting(HttpServletRequest request, Model model) {

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        Integer pageCount = Integer.parseInt(request.getParameter("pageCount"));

        Setting setting = new Setting();
        setting.setTitle(title);
        setting.setDescription(description);
        setting.setPageCount(pageCount);

        int result = 0;

        // 判断是否存在配置
        if(settingService.isExistSetting()) {
            // 若存在，则更新配置
            Integer id = Integer.parseInt(request.getParameter("id"));
            setting.setId(id);
            result = settingService.updateSetting(setting);

        } else {
            // 若不存在，则添加配置
            result = settingService.addSettingOnFirst(setting);
        }

        model.addAttribute("setting", setting);

        if(result == 1) {
            model.addAttribute("msg", "博客配置成功！");
        }
        else {
            model.addAttribute("msg", "博客配置失败！");
        }

        return "admin_setting";
    }

}
