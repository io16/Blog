package me.codaline.model;




import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class Post {
    @Id
    @GeneratedValue
    int id;
    String title;
    String context;
    String date;
    String image;



    public void setImage(String image) {
        this.image = image;
    }

    public String getImage() {

        return image;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public int getId() {
        return id;
    }

    public String getDate() {
        return date;
    }

    public String getContext() {
        return context;
    }

    public String getTitle() {
        return title;
    }
}
