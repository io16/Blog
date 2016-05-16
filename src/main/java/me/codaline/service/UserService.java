//package me.codaline.service;
//
//import me.codaline.dao.UserDao;
//import me.codaline.model.User;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import java.util.List;
//
//@Service
//public class UserService {
//
//    @Autowired
//    UserDao dao;
//
//    public User createUser(String firstName, String lastName, String email, String pass) {
//        User user = new User();
//        user.setLastName(lastName);
//        user.setFirstName(firstName);
//        user.setEmail(email);
//        user.setPass(pass);
//        dao.save(user);
//        return user;
//    }
//
//    public List<User> getUsers() {
//        return dao.getUsers();
//    }
//
//    public User getUser(String email, String pass) {
//        return dao.getUser(email, pass);
//    }
//
//
//}
