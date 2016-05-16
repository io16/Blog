package me.codaline.controller;

import me.codaline.model.Post;
import me.codaline.service.ImageService;
import me.codaline.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.awt.List;
import java.io.File;
import java.lang.reflect.Array;
import java.util.*;

@Controller
@SessionAttributes({"access","user"})

public class MyController {
    @Autowired
    PostService service;
    @Autowired
    ImageService imageService;

    @RequestMapping("/")
    String index(ModelMap model, String page) {
        java.util.List<Post> posts = service.getPosts();
        model.addAttribute("posts", posts);


        if (page != null)
            model.addAttribute("page", page);
        else model.addAttribute("page", 1);
        model.addAttribute("pages",( posts.size() / 2 )+ posts.size() % 2);
        return "index2";
    }
//
//    @RequestMapping("/login")
//    String logIn() {
//        return "login";
//    }

    @RequestMapping(value = "/admin/addPost" , method = RequestMethod.GET)
    String addPost(ModelMap modelMap, HttpServletRequest request) {
        modelMap.addAttribute("images",imageService.getImages(request));
        return "index1";
    }

    @RequestMapping("/registration")
    String registration() {
        return "registration";
    }




    @RequestMapping("/gallery")
    String gallery(ModelMap modelMap, HttpServletRequest request) {
        modelMap.addAttribute("images",imageService.getImages(request));
        return "gallery";
    }



}
