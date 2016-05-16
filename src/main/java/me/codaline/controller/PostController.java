package me.codaline.controller;


import me.codaline.model.CrunchifyFileUpload;
import me.codaline.model.Post;
import me.codaline.service.ImageService;
import me.codaline.service.PostService;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

@Controller
public class PostController {
    @Autowired
    PostService service;
    @Autowired
    ImageService imageService;

    @RequestMapping(value = "/savefiles", method = RequestMethod.POST)
    public String crunchifySave(
            @ModelAttribute("uploadForm") CrunchifyFileUpload uploadForm,
            Model map, HttpServletRequest request) throws IllegalStateException, IOException {


        imageService.saveImages(request,uploadForm);

        map.addAttribute("images",imageService.getImages(request));
        return "index1";
    }
    @RequestMapping(value = "/addPost", method = RequestMethod.POST)
    String createPost(ModelMap model, String title, String context, String date, String image,String page) {
        service.createPost(title, context, date, image);
        List<Post> posts = service.getPosts();
        model.addAttribute("posts", posts);
        if (page != null)
            model.addAttribute("page", page);
        else model.addAttribute("page", 1);
        model.addAttribute("pages",( posts.size() / 2 )+ posts.size() % 2);
        return "index2";
    }


    @RequestMapping(value = "/deletePost", method = RequestMethod.POST)
    String deletePost(ModelMap model, int id, String page) {
        service.deletePost(id);
        List<Post> posts = service.getPosts();
        model.addAttribute("posts", posts);
        if (page != null)
            model.addAttribute("page", page);
        else model.addAttribute("page", 1);
        model.addAttribute("pages",( posts.size() / 2 )+ posts.size() % 2);
//        req.getRequestDispatcher("index2.jsp").forward(req,resp);
        return "index2";
    }

    @RequestMapping(value = "/updatePost", method = RequestMethod.POST)
    String updatePost(ModelAndView model, int id, String title, String context, String date, String image, String page) {
        Post post = service.update(id, title, context, date, image);
        model.addObject("post", post);

        return "index2";
    }


}