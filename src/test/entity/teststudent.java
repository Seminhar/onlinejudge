package test.entity;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.hibernate.cfg.Configuration;
import org.junit.Test;
/**
 * Created by Administrator on 2016/3/7.
 */

public class teststudent {
  @Test
 public void testSchemaExport(){
     Configuration config =  new Configuration().configure();
     ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().
             applySettings(config.getProperties()).buildServiceRegistry();
     SessionFactory sessionFactory = config.buildSessionFactory(serviceRegistry);
     Session session = sessionFactory.getCurrentSession();
     SchemaExport export = new SchemaExport(config);
     export.create(true,true);


 }
}
