package com.jiahao.blog.service.impl;

import com.jiahao.blog.dao.TypeMapper;
import com.jiahao.blog.pojo.Type;
import com.jiahao.blog.service.TypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("typeService")
public class TypeServiceImpl implements TypeService {

    @Resource
    private TypeMapper typeMapper;

    public List<Type> getTypeList() {
        return typeMapper.selectList();
    }

    public int addType(Type type) {
        return typeMapper.insert(type);
    }

    public int updateType(Type type) {
        return typeMapper.updateByPrimaryKey(type);
    }

    public int deleteType(Integer id) {
        return typeMapper.deleteByPrimaryKey(id);
    }
}
