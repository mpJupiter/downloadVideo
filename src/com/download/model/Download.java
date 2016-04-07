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
 * Download entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_download", catalog = "downloadvideo")
public class Download implements java.io.Serializable {

	// Fields

	private Integer downloadId;
	private Customer customer;
	private Video video;

	// Constructors

	/** default constructor */
	public Download() {
	}

	/** minimal constructor */
	public Download(Video video) {
		this.video = video;
	}

	/** full constructor */
	public Download(Customer customer, Video video) {
		this.customer = customer;
		this.video = video;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "downloadId", unique = true, nullable = false)
	public Integer getDownloadId() {
		return this.downloadId;
	}

	public void setDownloadId(Integer downloadId) {
		this.downloadId = downloadId;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "customer")
	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "video", nullable = false)
	public Video getVideo() {
		return this.video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

}