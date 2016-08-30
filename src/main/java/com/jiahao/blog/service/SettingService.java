package com.jiahao.blog.service;

import com.jiahao.blog.pojo.Setting;

/**
 * Created by Administrator on 2016/8/30.
 */
public interface SettingService {

    /**
     * 获取配置
     * @return
     */
    Setting getSetting();

    /**
     * 更新配置
     * @param setting 配置信息
     * @return
     */
    int updateSetting(Setting setting);

    /**
     * 第一次配置博客时，进行添加配置
     * @param setting
     * @return
     */
    int addSettingOnFirst(Setting setting);

    /**
     * 判断是否有配置
     * @return
     */
    boolean isExistSetting();

}
