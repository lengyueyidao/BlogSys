import org.junit.*;

/**
 * Created by Administrator on 2016/8/25.
 */
public class TestDemo {

    @MyBefore
    public void before() {
        System.out.println("测试之前");
    }

    @MyAfter
    public void after() {
        System.out.println("测试之后");
    }

    @MyTest
    public void test() {
        System.out.println("这是一个测试类");
    }

    @MyTest
    public void test1() {
        System.out.println("这是一个测试类2");
    }

    @org.junit.Test
    public void test2() {

    }

}
