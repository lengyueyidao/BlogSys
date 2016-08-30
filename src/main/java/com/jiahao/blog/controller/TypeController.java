package com.jiahao.blog.controller;

import com.jiahao.blog.pojo.Type;
import com.jiahao.blog.service.TypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class TypeController {

    @Resource
    private TypeService typeService;

    @RequestMapping("/type")
    public String type(Model model) {
        List<Type> typeList = typeService.getTypeList();
        model.addAttribute("typeList", typeList);
        return "admin_type";
    }

    @RequestMapping("/type/add")
    public String add(@RequestParam("typeName") String typeName) {

        Type type = new Type();
        type.setTypeName(typeName);

        typeService.addType(type);

        return "redirect:/admin/type";
    }

    @RequestMapping("/type/delete")
    public String delete(HttpServletRequest request) {

        Integer id = Integer.parseInt(request.getParameter("id"));

        typeService.deleteType(id);

        return "redirect:/admin/type";
    }

    @RequestMapping("/type/update")
    public String update(HttpServletRequest request) {

        Integer id = Integer.parseInt(request.getParameter("id"));
        String typeName = request.getParameter("typeName");
        System.out.println(typeName);
        Type type = new Type();

        type.setId(id);
        type.setTypeName(typeName);

        typeService.updateType(type);

        return "redirect:/admin/type";
    }
}
