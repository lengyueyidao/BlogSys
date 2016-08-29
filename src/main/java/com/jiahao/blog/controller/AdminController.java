package com.jiahao.blog.controller;

import com.jiahao.blog.pojo.Admin;
import com.jiahao.blog.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2016/8/28.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Resource
    private AdminService adminService;

    @RequestMapping(value = {"/login", "/"}, method = RequestMethod.GET)
    public String login() {
        return "admin_login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session) {
        Admin admin = adminService.adminLogin(username, password);
        if(null != admin) {
            System.out.println("登录成功！");
        }
        else {
            System.out.println("登录失败！");
        }
        return "";
    }

}
