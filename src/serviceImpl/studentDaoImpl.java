package serviceImpl;

import db.MyHibernateSessionFactory;
import entity.student;
import org.hibernate.*;
import service.studentDao;
import java.util.List;


/**
 * Created by Administrator on 2016/3/7.
 */
public class studentDaoImpl implements studentDao {
    /**
     * 学生登录
     * */
    @Override
    public boolean studentLogin(student stu) {
        Transaction tx = null;
        String hql = "";
        try {
            Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
            tx = session.beginTransaction();
            hql = "from student where studentName=:studentName and studentPassword=:studentPassword";
            Query query = session.createQuery(hql);
            query.setParameter("studentName", stu.getStudentName());
            query.setParameter("studentPassword", stu.getStudentPassword());
            List list = query.list();
            tx.commit();
            if (list.size() > 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            if (tx != null) {
                tx = null;
            }
        }
    }

    /**
     * 生成学号
     * */
    private String getNum() {
        Transaction tx = null;
        String hql = "";
        String Num = null;
        try {
            Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
            tx = session.beginTransaction();
            hql = "select max(studentNum) from student";
            Query query = session.createQuery(hql);
            Num = (String) query.uniqueResult();
            if (Num == null || "".equals(Num)) {
                Num = "stu00000001";
            } else {
                String temp = Num.substring(3);
                int i = Integer.parseInt(temp);//转换成数字
                i++;
                temp = String.valueOf(i);
                int len = temp.length();
                for (int j = 0; j < 8 - len; j++) {
                    temp = "0" + temp;
                }
                Num = "stu" + temp;
            }
            session.close();
            return Num;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (tx != null)
                tx = null;
        }
    }

    /**
     * 学生注册
     * */
    public boolean studentRegister(student stu) {
        Transaction tx = null;
        try {
            studentDaoImpl studentDao = new studentDaoImpl();
            stu.setStudentNum(studentDao.getNum());
            Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
            tx = session.beginTransaction();
            session.save(stu);
            tx.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            if (tx != null) {
                tx = null;
            }
        }

    }

    /**
    查询所有学生
    **/
    public List<student> queryAllStudent() {
        Transaction tx = null;
        String hql = "";
        List<student> list = null;
        try {
            Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
            tx = session.beginTransaction();
            hql = "from student";
            Query query = session.createQuery(hql);
            list = query.list();
            tx.commit();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            tx.commit();
            return list;
        } finally {
            if (tx != null)
                tx = null;
        }
    }

    @Override
    public student queryStudnetById(String studentNum) {
        return null;
    }

    @Override
    public boolean deleteStudent(String studentNum) {
        return false;
    }

    @Override
    public boolean updateStudent(student stu) {
        return false;
    }
}
