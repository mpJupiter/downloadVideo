package com.download.dao;

import java.util.*;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.download.model.Customer;

@Service @Transactional
public class CustomerDao {
      @Resource SessionFactory factory;
      public void addCustomer(Customer customer) throws Exception{
    	  Session s=factory.getCurrentSession();
    	  s.save(customer);
      }
      public void deleteCustomer(String cnum)throws Exception{
    	  Session s=factory.getCurrentSession();
    	  Object customer=s.load(Customer.class, cnum);
    	  s.delete(customer);
      }
      public void updateCustomer(Customer customer) throws Exception{
    	  Session s=factory.getCurrentSession();
    	  s.update(customer);
      }
      public ArrayList<Customer> QueryAllCustomer(){
    	  Session s=factory.getCurrentSession();
    	  String hql="From Customer";
    	  Query q=s.createQuery(hql);
    	  List customerList=q.list();
    	  return(ArrayList<Customer>) customerList;
      }
      public Customer GetCustomerByNum(String vnum){
    	  Session s=factory.getCurrentSession();
    	  Customer customer=(Customer)s.get(Customer.class, vnum);
    	  return customer;
      }
      public ArrayList<Customer> QueryCustomer(String customerName){
    	  Session s=factory.getCurrentSession();
    	  List customerList;
    	  String hql="From Customer customer where 1=1";
    	  if(!customerName.equals("")){
    		  hql=hql+"and customer.customerName like '%"+customerName+"%'";
    		  Query q=s.createQuery(hql);
        	  customerList=q.list();
    	  }else{
    		  customerList=null;
    	  }
    	 
    	  return(ArrayList<Customer>) customerList;
      }
}
