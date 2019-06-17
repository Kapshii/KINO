package com.example.zabytkowykino.domianimpl;

import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;


@Entity
public class Sliders implements Serializable {
    private static final long serialVersionUID = 2L;


    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
//    @NotBlank(message = "Please fill the message")
//    @Length(max = 2048, message = "Message too long (more than 2kB)")
//    private String text;
    @NotBlank(message = "Cannot be empty")
    @Length(max = 2048, message = "Message too long (more than 2kB)")
    private String tag;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User authors;
    @NotBlank(message = "Cannot be empty")
    private String text;
    private String filename;



    private String opis;

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

    private String rok;
    public Sliders() {
    }

    public String getTag() {
        return tag;
    }

    public Sliders(String tag, String text, String rok, String opis, User user) {
        this.authors = user;
        this.text = text;
        this.tag = tag;
        this.opis = opis;
        this.rok = rok;
    }

    public String getAuthorsName() {
        return authors != null ? authors.getUsername() : "<none>";
    }

    public User getAuthors() {
        return authors;
    }

    public void setAuthors(User authors) {
        this.authors = authors;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String Tag() {
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

//    public String getText() {
//        return text;
//    }
//
//    public void setText(String text) {
//        this.text = text;
//    }
//
}


