package com.jiahao.blog.controller;

import com.jiahao.blog.pojo.Admin;
import com.jiahao.blog.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, Model model, HttpSession session) {
        Admin admin = adminService.adminLogin(username, password);
        if(null != admin) {
            System.out.println("登录成功！");
            session.setAttribute("admin", "admin");
            return "admin_article";
        }
        else {
            System.out.println("登录失败！");
            model.addAttribute("error", "用户名不存在或密码不正确！！！请重新登录。。。");
            return "admin_login";
        }

    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("admin");
        return "redirect:admin/login";
    }

    @RequestMapping("/new")
    public String newP() {
        return "admin_new";
    }

    @RequestMapping("/test")
    public String test(HttpServletRequest request) {
        String type = request.getParameter("type");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        System.out.println("type:" + type);
        System.out.println("title:" + title);
        System.out.println("content:" + content);

        return "admin_new";
    }
}
