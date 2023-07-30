/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Blog;

import java.util.Date;

/**
 *
 * @author Thắng
 */
public class BlogDTO {
    private int blog_id;
    private String thumbnail;
    private String title;
    private Date date_update;
    private String content;
    private String description;
    private  boolean status;
    private String hashtag;
    private int bird_id;

    public BlogDTO() {
    }

    public BlogDTO(int blog_id, String thumbnail, String title, Date date_update, String content, String description, boolean status, String hashtag, int bird_id) {
        this.blog_id = blog_id;
        this.thumbnail = thumbnail;
        this.title = title;
        this.date_update = date_update;
        this.content = content;
        this.description = description;
        this.status = status;
        this.hashtag = hashtag;
        this.bird_id = bird_id;
    }

  

    

    public int getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(int blog_id) {
        this.blog_id = blog_id;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDate_update() {
        return date_update;
    }

    public void setDate_update(Date date_update) {
        this.date_update = date_update;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getHashtag() {
        return hashtag;
    }

    public void setHashtag(String hashtag) {
        this.hashtag = hashtag;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getBird_id() {
        return bird_id;
    }

    public void setBird_id(int bird_id) {
        this.bird_id = bird_id;
    }

    
    
    @Override
    public String toString() {
        return "BlogDTO{" + "blog_id=" + blog_id + ", thumbnail=" + thumbnail + ", title=" + title + ", date_update=" + date_update + ", content=" + content + ", status=" + status + ", hashtag=" + hashtag + '}';
    }

}