package serviceImpl;

import db.MyHibernateSessionFactory;
import entity.problemInfo;
import org.hibernate.Session;
import org.hibernate.Transaction;
import service.problemInfoDao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.logging.SimpleFormatter;

/**
 * Created by Administrator on 2016/4/9.
 */
public class problemInfoDaoImpl implements problemInfoDao {
    /**
     * 生成随机数字和字符的字符串
     * @return
     */
    public static String getRandomString() { //length表示生成字符串的长度
        String base = "abcdefghijklmnopqrstuvwxyz0123456789"; //生成字符串从此序列中取
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < 11; i++) {
            int number = random.nextInt(base.length());
            sb.append(base.charAt(number));
        }
        return sb.toString();
    }

    /**
     * 生成时间格式
     * @return
     */
    public static String getTimes(){
        Date date=new Date();
        SimpleDateFormat dateF = new SimpleDateFormat("yyyy-MM-dd-HH-mmss");
        String timeF = dateF.format(date);
        return timeF;
    }
    /**
     * 添加题目信息
     * @param pInfo
     * @return
     */
    @Override
    public boolean addProblemInfo(problemInfo pInfo) {
        Transaction tx = null;
        try {
            problemInfoDaoImpl pInfoDao = new problemInfoDaoImpl();
            pInfo.setProblemId(pInfoDao.getRandomString());
            pInfo.setAcceptTimes(pInfoDao.getTimes());
            System.out.println("pInfoDao.getRandomString()"+pInfoDao.getRandomString());
            Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
            tx = session.beginTransaction();
            session.save(pInfo);
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

    @Override
    public boolean updateProblemInfo(problemInfo pInfo) {
        return false;
    }

    @Override
    public boolean deleteProblemInfo(problemInfo pInfo) {
        return false;
    }
}
