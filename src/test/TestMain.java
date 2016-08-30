import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/8/25.
 */
public class TestMain {

    public static void main(String[] args) throws Exception {


        Class clazz = TestDemo.class;

        Method[] methods = clazz.getMethods();

        List<Method> methodList = new ArrayList<Method>();
        Method beforeMethod = null;
        Method afterMethod = null;

        for(Method method : methods) {
            if(method.isAnnotationPresent(MyTest.class)) {
                methodList.add(method);
            }
            if(method.isAnnotationPresent(MyAfter.class)) {
                afterMethod = method;
            }
            if(method.isAnnotationPresent(MyBefore.class)) {
                beforeMethod = method;
            }
         }

        Object o = clazz.newInstance();

        for(Method method : methodList) {
            if(beforeMethod != null) {
                beforeMethod.invoke(o, null);
            }

            method.invoke(o, null);

            if(afterMethod != null) {
                afterMethod.invoke(o, null);
            }
        }

    }

}
