package service;

import entity.student;
import java.util.List;

/**
 * Created by Administrator on 2016/3/7.
 */
//学生业务逻辑接口
public interface studentDao {
    /**学生登录*/
    public  boolean studentLogin(student stu);
    /**注册、添加*/
    public boolean studentRegister(student stu);
    /**查询所有学生*/
    public List<student> queryAllStudent();
    /**
     * 根据学号查询
     * */
    public student queryStudnetById(String studentNum);
   /**
    * 删除学生
    * */
    public boolean deleteStudent(String studentNum);
    /**修改学生信息
     * */
    public boolean updateStudent(student stu);
}
