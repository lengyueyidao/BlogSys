package com.jiahao.blog.service.impl;

import com.jiahao.blog.dao.AdminMapper;
import com.jiahao.blog.pojo.Admin;
import com.jiahao.blog.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016/8/26.
 */
@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Resource
    private AdminMapper adminMapper;

    public Admin adminLogin(String adminCode, String adminPassword) {
        return adminMapper.selectByCodeAndPassword(adminCode, adminPassword);
    }

    public int updateAdmin(Admin admin) {
        return adminMapper.updateByPrimaryKey(admin);
    }
}
