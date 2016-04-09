package com.download.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;


/**
 * Video entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="t_video"
    ,catalog="downloadvideo"
)

public class Video  implements java.io.Serializable {


    // Fields    

     private Integer videoId;
     private Videotype videotype;
     private String videoName;
     private String introduce;
     private String director;
     private String pubishData;
     private String cast;
     private String picture;
     private String path;


    // Constructors

    /** default constructor */
    public Video() {
    }

    
    /** full constructor */
    public Video(Videotype videotype, String videoName, String introduce, String director, String pubishData, String cast, String picture, String path) {
        this.videotype = videotype;
        this.videoName = videoName;
        this.introduce = introduce;
        this.director = director;
        this.pubishData = pubishData;
        this.cast = cast;
        this.picture = picture;
        this.path = path;
    }

   
    // Property accessors
    @GenericGenerator(name="generator", strategy="increment")@Id @GeneratedValue(generator="generator")
    
    @Column(name="videoId", unique=true, nullable=false)

    public Integer getVideoId() {
        return this.videoId;
    }
    
    public void setVideoId(Integer videoId) {
        this.videoId = videoId;
    }
	@ManyToOne(fetch=FetchType.EAGER)
        @JoinColumn(name="videoType")

    public Videotype getVideotype() {
        return this.videotype;
    }
    
    public void setVideotype(Videotype videotype) {
        this.videotype = videotype;
    }
    
    @Column(name="videoName", length=11)

    public String getVideoName() {
        return this.videoName;
    }
    
    public void setVideoName(String videoName) {
        this.videoName = videoName;
    }
    
    @Column(name="introduce", length=50)

    public String getIntroduce() {
        return this.introduce;
    }
    
    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }
    
    @Column(name="director", length=11)

    public String getDirector() {
        return this.director;
    }
    
    public void setDirector(String director) {
        this.director = director;
    }
    
    @Column(name="pubishData", length=11)

    public String getPubishData() {
        return this.pubishData;
    }
    
    public void setPubishData(String pubishData) {
        this.pubishData = pubishData;
    }
    
    @Column(name="cast", length=11)

    public String getCast() {
        return this.cast;
    }
    
    public void setCast(String cast) {
        this.cast = cast;
    }
    
    @Column(name="picture", length=30)

    public String getPicture() {
        return this.picture;
    }
    
    public void setPicture(String picture) {
        this.picture = picture;
    }
    
    @Column(name="path", length=20)

    public String getPath() {
        return this.path;
    }
    
    public void setPath(String path) {
        this.path = path;
    }
   








}