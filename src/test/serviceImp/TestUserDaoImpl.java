package test.serviceImp;

import entity.student;
import org.jboss.logging.Logger;
import org.junit.Assert;
import org.junit.Test;
import service.studentDao;
import serviceImpl.studentDaoImpl;

/**
 * Created by Administrator on 2016/3/7.
 */
public class TestUserDaoImpl {
    @Test
    public void testUserLogin() {
        student student = new student("112583010137","zhangsan","123456","123456@qq.com","软件学院","男");

        studentDao studentDao = new studentDaoImpl();
        Assert.assertEquals(true,studentDao.studentLogin(student));
    }
}
