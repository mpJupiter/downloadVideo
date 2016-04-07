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
 * Customer entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_customer", catalog = "downloadvideo")
public class Customer implements java.io.Serializable {

	// Fields

	private Integer customerId;
	private String customerName;
	private String password;
	private Set<Download> downloads = new HashSet<Download>(0);

	// Constructors

	/** default constructor */
	public Customer() {
	}

	/** full constructor */
	public Customer(String customerName, String password,
			Set<Download> downloads) {
		this.customerName = customerName;
		this.password = password;
		this.downloads = downloads;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "customerId", unique = true, nullable = false)
	public Integer getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	@Column(name = "customerName", length = 11)
	public String getCustomerName() {
		return this.customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	@Column(name = "password", length = 11)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "customer")
	public Set<Download> getDownloads() {
		return this.downloads;
	}

	public void setDownloads(Set<Download> downloads) {
		this.downloads = downloads;
	}

}