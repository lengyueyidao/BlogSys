package com.jiahao.blog.dao;

import com.jiahao.blog.pojo.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer adminId);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer adminId);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

    Admin selectByCodeAndPassword(@Param("adminCode") String adminCode, @Param("adminPassword") String adminPassword);
}