package com.example.zabytkowykino.domianimpl;

import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;


@Entity
public class Message implements Serializable {
    private static final long serialVersionUID = 12131L;
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;
    @Length(max = 1024, message = "Message too long (more than 1kB)")
    @NotBlank(message = "Cannot be empty")
     private String tag;
    @NotBlank(message = "Cannot be empty")
    private String text;


    private String opis;

    private String rok;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getRok() {
        return rok;
    }

    public void setRok(String rok) {
        this.rok = rok;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    private String filename;

    public Message() {
    }

    public Message( String tag,String text,String rok,String opis, User user) {
        this.author = user;
        this.text = text;
        this.tag = tag;
        this.opis = opis;
        this.rok = rok;
    }

    public String getAuthorName() {
        return author != null ? author.getUsername() : "<none>";
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }



}
