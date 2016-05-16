//package me.codaline.controller;
//
//import me.codaline.model.Post;
//import me.codaline.model.User;
//import me.codaline.service.PostService;
//import me.codaline.service.UserService;
//import org.json.JSONException;
//import org.json.JSONObject;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.*;
//
//import javax.servlet.http.HttpSession;
//import java.util.List;
//
//@Controller
//@SessionAttributes({"access", "user"})
//public class UserController {
//
//    @Autowired
//    UserService service;
//    @Autowired
//    PostService PostService;
//
//    @RequestMapping(value = "/createUser", method = RequestMethod.GET)
//    String createUser() {
//        return "createUser";
//    }
//
////    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
////         ModelAndView saveUser(
////                    String firstName,
////                    String lastName,
////                    String email
////            ) {
////        ModelAndView modelAndView = new ModelAndView("success");
////        User user = service.createUser(firstName, lastName, email);
////        modelAndView.addObject("user", user);
////        return modelAndView;
////    }
//
//    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
//    String saveUser(
//            ModelMap modelMap,
//            String firstName,
//            String lastName,
//            String email,
//            String pass
//    ) {
//        User user = service.createUser(firstName, lastName, email, pass);
//        modelMap.addAttribute("user", user);
//        List<Post> posts = PostService.getPosts();
//        modelMap.addAttribute("posts", posts);
//        modelMap.addAttribute("page", 1);
//        modelMap.addAttribute("pages", (posts.size() / 2) + posts.size() % 2);
//        return "index2";
//    }
//
//
//    @RequestMapping(value = "/users", method = RequestMethod.GET)
//    String getUsers(ModelMap modelMap) {
//        List<User> users = service.getUsers();
//        modelMap.addAttribute("users", users);
//        return "users";
//    }
//
//    @RequestMapping(value = "/user", method = RequestMethod.POST)
//    String getUser(ModelMap modelMap, String email, String pass) throws JSONException {
////        User user = service.getUser(email, pass);
//        User user = service.getUser(email, pass);
//
//        try {
//
//            if (!user.getEmail().equals(null)) {
//                modelMap.addAttribute("user", user);modelMap.addAttribute("access", true);
//                List<Post> posts = PostService.getPosts();
//                modelMap.addAttribute("posts", posts);
//                modelMap.addAttribute("page", 1);
//                modelMap.addAttribute("pages", (posts.size() / 2) + posts.size() % 2);
//                return "index2";
//            } else {
//                return "logIn";
//            }
//
//
//        } catch (NullPointerException e) {
//
//            modelMap.addAttribute("status", "false");
//            return "logIn";
//
//        }
//    }
//
//    @RequestMapping(value = "/logout", method = RequestMethod.GET)
//    String logOut(ModelMap model) {
//        List<Post> posts = PostService.getPosts();
//        model.addAttribute("posts", posts);
//        model.addAttribute("access", "false");
//        model.addAttribute("page", 1);
//        model.addAttribute("pages", (posts.size() / 2) + posts.size() % 2);
//        return "index2";
//    }
//
//}
