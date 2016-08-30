package com.jiahao.blog.service.impl;

import com.jiahao.blog.dao.SettingMapper;
import com.jiahao.blog.pojo.Setting;
import com.jiahao.blog.service.SettingService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service("settingService")
public class SettingServiceImpl implements SettingService {

    @Resource
    private SettingMapper settingMapper;

    public Setting getSetting() {
        return settingMapper.selectSetting();
    }

    public int updateSetting(Setting setting) {
        return settingMapper.updateByPrimaryKey(setting);
    }

    public int addSettingOnFirst(Setting setting) {
        return settingMapper.insert(setting);
    }

    public boolean isExistSetting() {
        Setting setting = settingMapper.selectSetting();
        if(setting != null) {
            return true;
        }
        return false;
    }
}
