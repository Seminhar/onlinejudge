package action;

import com.opensymphony.xwork2.ModelDriven;
import entity.student;
import service.studentDao;
import serviceImpl.studentDaoImpl;
import java.util.List;

/**
 * Created by Administrator on 2016/3/9.
 */
/**
 * 实现模型驱动接受表单数据
 * */
public class studentAction extends SuperAction implements ModelDriven<student> {

    /*    private static final long serialVersionUID = 1L;*/
    private student stu = new student();

    public student getModel() {
        if (this.stu == null) {
            return stu = new student();
        }
        return this.stu;
    }

    /**
     * 学生登录
     * */
    public String stuLogin() {
        studentDao stuDao = new studentDaoImpl();
       /* System.out.print(getModel().getStudentNum());*/
        if (stuDao.studentLogin(stu)) {

            return "stu_login_success";
        } else {
            return "stu_login_failure";
        }
    }

    /**
    学生注册
    */
    public String stuRegister() {
        studentDao studentDao = new studentDaoImpl();
        if (studentDao.studentRegister(stu)) {
            return "stu_register_success";
        }else{
            return "stu_register_failure";
        }
    }
    /**
     * 查询学生信息
     * */
   public String  stuQuery(){
       studentDao studentDao = new studentDaoImpl();
       List<student> list = studentDao.queryAllStudent();
       if (list!=null&&list.size()>0){
           session.setAttribute("queryAllStudent_list",list);
       }
       else
       return "stu_queryAll_failure";

       return "stu_queryAll_success";
        }

}
