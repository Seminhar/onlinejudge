package db;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistryBuilder;


/**
 * Created by Administrator on 2016/3/7.
 */
public class MyHibernateSessionFactory {
    private static SessionFactory sessionFactory;

    //单例模式
    private MyHibernateSessionFactory() {

    }

    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            Configuration config = new Configuration().configure();
            org.hibernate.service.ServiceRegistry serviceRegistry = new ServiceRegistryBuilder()
                    .applySettings(config.getProperties()).buildServiceRegistry();
            sessionFactory = config.buildSessionFactory(serviceRegistry);
            return sessionFactory;

        } else {
            return sessionFactory;
        }
    }

}
