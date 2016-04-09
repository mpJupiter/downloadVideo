package com.download.action;

import java.util.*;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.download.dao.CustomerDao;
import com.download.model.Customer;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class CustomerAction extends ActionSupport{
	@Resource CustomerDao customerDao;
	private Customer customer;
	private List<Customer> customerList;
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public List<Customer> getCustomerList() {
		return customerList;
	}
	public void setCustomerList(List<Customer> customerList) {
		this.customerList = customerList;
	}
	public String addCustomer() throws Exception{
		customerDao.addCustomer(customer);
		return "message";
	}
	public String showCustomer(){
		customerList=customerDao.QueryAllCustomer();
		return "show_view";
	}
	public String reg() throws Exception{
		customerDao.addCustomer(customer);
		return"show_view";
	}
	private String errMessage;
	public String getErrMessage() {
		return errMessage;
	}
	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}
	public String login(){
		Customer db_customer=(Customer)customerDao.QueryCustomer(customer.getCustomerName()).get(0);
		if(db_customer==null){
			this.errMessage="该账号不存在！";
			System.out.print(this.errMessage);
			return INPUT;
		}else if(!db_customer.getPassword().equals(customer.getPassword())){
			this.errMessage="密码不正确！";
			System.out.print(this.errMessage);
			return INPUT;
		}
		return "show_view";
	}
}
