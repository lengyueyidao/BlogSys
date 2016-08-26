package com.jiahao.blog.service;

import com.jiahao.blog.pojo.Admin;

/**
 * Created by Administrator on 2016/8/26.
 */
public interface AdminService {

    /**
     * 管理员登录
     * @param adminCode 用户名
     * @param adminPassword 密码
     * @return
     */
    Admin adminLogin(String adminCode, String adminPassword);

    /**
     * 修改管理信息
     * @param admin
     * @return
     */
    int updateAdmin(Admin admin);

}
