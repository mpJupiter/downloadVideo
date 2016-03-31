package com.download.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Videotype entity. @author MyEclipse Persistence Tools
 */

public class Videotype implements java.io.Serializable {

	// Fields

	private String videoTypeId;
	private String videoTypeName;
	private Set videos = new HashSet(0);
	private Set videos_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Videotype() {
	}

	/** full constructor */
	public Videotype(String videoTypeName, Set videos, Set videos_1) {
		this.videoTypeName = videoTypeName;
		this.videos = videos;
		this.videos_1 = videos_1;
	}

	// Property accessors

	public String getVideoTypeId() {
		return this.videoTypeId;
	}

	public void setVideoTypeId(String videoTypeId) {
		this.videoTypeId = videoTypeId;
	}

	public String getVideoTypeName() {
		return this.videoTypeName;
	}

	public void setVideoTypeName(String videoTypeName) {
		this.videoTypeName = videoTypeName;
	}

	public Set getVideos() {
		return this.videos;
	}

	public void setVideos(Set videos) {
		this.videos = videos;
	}

	public Set getVideos_1() {
		return this.videos_1;
	}

	public void setVideos_1(Set videos_1) {
		this.videos_1 = videos_1;
	}

}