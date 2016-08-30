import com.jiahao.blog.dao.AdminMapper;
import com.jiahao.blog.pojo.Admin;
import com.jiahao.blog.service.AdminService;
import org.junit.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016/8/28.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class MybatisTest {

    @Resource
    AdminService adminService;


    @Test
    public void test() {
        adminService.adminLogin("admin", "admin");
    }

    @Test
    public void test1() {
        Admin admin = new Admin();
        admin.setAdminId(1);
        admin.setAdminCode("admin");
        admin.setAdminPassword("123456");
        adminService.updateAdmin(admin);
    }
}
