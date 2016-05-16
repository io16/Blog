package me.codaline.dao;

import me.codaline.model.User;

//import me.codaline.model.Post;
//import me.codaline.model.User;
//import org.hibernate.Criteria;
//import org.hibernate.SessionFactory;
//import org.hibernate.criterion.Order;
//import org.hibernate.criterion.Restrictions;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.util.List;
//
//@Repository
//@Transactional
//public class UserDao {
//
//    @Autowired
//    SessionFactory sessionFactory;
//
//    public void save(User user) {
//        sessionFactory.getCurrentSession().save(user);
//    }
//
//    public List<User> getUsers() {
//        return sessionFactory.getCurrentSession().createCriteria(User.class).list();
//    }
//
//    public User getUser(String email, String pass) {
//        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
//        // criteria.add(Restrictions.eq( email ,"email"));
//        criteria.add(Restrictions.eq("email", email));
//        criteria.add(Restrictions.eq("pass", pass));
//
//
//
////        Query query = sessionFactory.getCurrentSession().createQuery("select from User as u where u.email =:email");
////        query.setParameter("email", email);
//        return (User) criteria.uniqueResult();
//    }
//}
public interface UserDao {

    User findByUserName(String username);

}