package com.jiahao.blog.service;


import com.jiahao.blog.pojo.Type;

import java.util.List;

public interface TypeService {

    /**
     * 分类列表
     * @return
     */
    List<Type> getTypeList();

    /**
     * 添加分类
     * @param type 分类信息
     * @return
     */
    int addType(Type type);

    /**
     * 更新分类
     * @param type 分类信息
     * @return
     */
    int updateType(Type type);

    /**
     * 删除分类
     * @param id 分类ID
     * @return
     */
    int deleteType(Integer id);

}
