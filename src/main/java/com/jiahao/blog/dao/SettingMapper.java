package com.jiahao.blog.dao;

import com.jiahao.blog.pojo.Setting;

public interface SettingMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Setting record);

    int insertSelective(Setting record);

    Setting selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Setting record);

    int updateByPrimaryKey(Setting record);

    Setting selectSetting();
}