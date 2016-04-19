package serviceImpl;

import commonTool.generateStr;
import commonTool.generateTimeFormat;
import db.MyHibernateSessionFactory;
import entity.submitInfo;
import org.hibernate.Session;
import org.hibernate.Transaction;
import service.submitInfoDao;

/**
 * Created by admin on 2016/4/19.
 */
public class submitInfoDaoImpl implements submitInfoDao {
    @Override
    public boolean submintCode(submitInfo sif) {
        Transaction tx = null;
        try {
            generateStr gstr =new generateStr();
            generateTimeFormat gtF = new generateTimeFormat();
            sif.setSubmitTime(gtF.getTimes());
            sif.setSubmitCodeId(gstr.getRandomString());

            Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
            tx = session.beginTransaction();
            session.save(sif);
            System.out.println("提交的问题Id是： "+sif.getProblemId());
            System.out.println(sif);
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
}
