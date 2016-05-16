package me.codaline.service;

import me.codaline.dao.PostDao;
import me.codaline.model.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class PostService {
    @Autowired
    PostDao dao;

    public Post createPost(String title, String context,String date,String image) {
        Post post = new Post();

        post.setTitle(title);
        post.setContext(context);
        post.setDate(date);
        post.setImage(image);
        dao.save(post);
        return post;
    }

    public Post deletePost(int id){
        Post post = new Post();
        post.setId(id);
        dao.delete(post);
        return post;
    }
    public  Post update (int id,String title, String context, String date , String image){
        Post post = new Post();
        post.setTitle(title);
        post.setContext(context);
        post.setDate(date);
        post.setId(id);
        post.setImage(image);
        dao.update(post);
        return post;
    }
    public List<Post> getPosts(){return  dao.getPosts();}
}
