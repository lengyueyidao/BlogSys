/**
 * Created by Administrator on 2016/8/25.
 */

import java.lang.reflect.*;

public class Test {

    public static void main(String[] args) throws Exception {

        Class clazz = Class.forName("Student");

        Constructor c1 = clazz.getConstructor(null);
        Object o1 = c1.newInstance(null);

        Constructor c2 = clazz.getConstructor(String.class);
        Object o2 = c2.newInstance("zhangsan");

        Method m1 = clazz.getMethod("show", null);
        m1.invoke(o1, null);

        Method m2 = clazz.getDeclaredMethod("eat", String.class);
        m2.setAccessible(true);
        m2.invoke(o1, "jiba");

        Field f1 = clazz.getDeclaredField("name");
        f1.setAccessible(true);
        f1.set(o1, "shabi");
        String name = (String) f1.get(o1);
        System.out.println(name);

    }

}
