package com.download.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;


/**
 * Videotype entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="t_videotype"
    ,catalog="downloadvideo"
)

public class Videotype  implements java.io.Serializable {


    // Fields    

     private String videoTypeId;
     private String videoTypeName;
     private Set<Video> videos = new HashSet<Video>(0);
     private Set<Video> videos_1 = new HashSet<Video>(0);


    // Constructors

    /** default constructor */
    public Videotype() {
    }

    
    /** full constructor */
    public Videotype(String videoTypeName, Set<Video> videos, Set<Video> videos_1) {
        this.videoTypeName = videoTypeName;
        this.videos = videos;
        this.videos_1 = videos_1;
    }

   
    // Property accessors
    @GenericGenerator(name="generator", strategy="increment")@Id @GeneratedValue(generator="generator")
    
    @Column(name="videoTypeId", unique=true, nullable=false, length=11)

    public String getVideoTypeId() {
        return this.videoTypeId;
    }
    
    public void setVideoTypeId(String videoTypeId) {
        this.videoTypeId = videoTypeId;
    }
    
    @Column(name="videoTypeName", length=11)

    public String getVideoTypeName() {
        return this.videoTypeName;
    }
    
    public void setVideoTypeName(String videoTypeName) {
        this.videoTypeName = videoTypeName;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="videotype")

    public Set<Video> getVideos() {
        return this.videos;
    }
    
    public void setVideos(Set<Video> videos) {
        this.videos = videos;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="videotype")

    public Set<Video> getVideos_1() {
        return this.videos_1;
    }
    
    public void setVideos_1(Set<Video> videos_1) {
        this.videos_1 = videos_1;
    }
   








}