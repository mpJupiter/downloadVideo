package com.download.model;

/**
 * Video entity. @author MyEclipse Persistence Tools
 */

public class Video implements java.io.Serializable {

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
	public Video(Videotype videotype, String videoName, String introduce,
			String director, String pubishData, String cast, String picture,
			String path) {
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

	public Integer getVideoId() {
		return this.videoId;
	}

	public void setVideoId(Integer videoId) {
		this.videoId = videoId;
	}

	public Videotype getVideotype() {
		return this.videotype;
	}

	public void setVideotype(Videotype videotype) {
		this.videotype = videotype;
	}

	public String getVideoName() {
		return this.videoName;
	}

	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}

	public String getIntroduce() {
		return this.introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getDirector() {
		return this.director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getPubishData() {
		return this.pubishData;
	}

	public void setPubishData(String pubishData) {
		this.pubishData = pubishData;
	}

	public String getCast() {
		return this.cast;
	}

	public void setCast(String cast) {
		this.cast = cast;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getPath() {
		return this.path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}