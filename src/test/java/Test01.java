import action.LoginAction;
import action.UserRegisterAction;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import dao.UserDocDao;
import entity.UserDoc;
import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import service.UserService;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class Test01 {
    @Test
    public void test() throws SQLException {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SessionFactory sessionFactory = context.getBean("sessionFactory",SessionFactory.class);
        Session session = sessionFactory.openSession();
        Transaction ts = session.beginTransaction();
        UserDoc user = new UserDoc();
        user.setUserId("222");
        user.setPassword("222");
        session.save(user);
        ts.commit();
        session.close();
    }

    @Test
    public void test2(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
//        UserDocDao userDao = context.getBean("userDao", UserDocDao.class);
//        List kkk = userDao.Select_User("kkk");
//        System.out.println(((UserDoc) kkk.get(0)).getPassword());
        UserService userService = context.getBean("userService", UserService.class);
        UserDoc kkk = userService.serch_User("kkk");
        System.out.println(kkk.getUserId());
    }

}
