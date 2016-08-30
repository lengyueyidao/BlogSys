package reflect;

/**
 * Created by Administrator on 2016/8/25.
 */
public class Student {
    private String name;
    private int age;

    public Student() {
        System.out.println("无参构造");
    }

    public Student(String name) {
        this.name = name;
        System.out.println("有参构造：" + name);
    }

    public void show() {
        System.out.println("这是一个show方法");
    }

    private void eat(String cai) {
        System.out.println("这是一个私有化的方法：I want to eat " + cai);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
