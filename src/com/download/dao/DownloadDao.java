package com.download.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.download.model.*;
import com.download.model.Download;


@Service @Transactional
public class DownloadDao {
	@Resource SessionFactory factory;
	
	/*增*/
	public void addDownload(Download download) throws Exception{
		Session s = factory.getCurrentSession();
		s.save(download);
	}
	
	/*删*/
	public void deleteDownload(Integer downloadid)throws Exception{
	    Session s = factory.getCurrentSession();
		Object download = s.load(Download.class, downloadid);
		s.delete(download);
	}
	
	/*改*/
	public void updateDownload(Download download)throws Exception{
		Session s = factory.getCurrentSession();
		s.update(download);
	}
	
	/*查所有的Download*/
	public ArrayList<Download> QueryAllDownloadInfo() {
		Session s = factory.getCurrentSession();
		String hql = "From Download";   
        Query q = s.createQuery(hql);
        List downloadList = q.list();
        return (ArrayList<Download>) downloadList;
    }
	
	/*根据主键查*/
	public Download GetDownloadById(Integer downloadid) {
        Session s = factory.getCurrentSession();
        Download download = (Download)s.get(Download.class, downloadid);
        return download;
    }
	
	/*根据查询条件查*/
	public ArrayList<Download> QueryDownloadInfo(Customer customer,Video video) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Download download where 1=1";
    	if(null!=customer && customer.getCustomerId()!=0) 
    		hql = hql + " and download.customer.customerId like '%" + customer.getCustomerId() + "%'";
    	if(null!=video && null!=video.getVideoName()) 
    		hql = hql + " and download.video.videoName like '%" + video.getVideoName() + "%'";
    	Query q = s.createQuery(hql);
    	List downloadList = q.list();
    	return (ArrayList<Download>) downloadList;
    }
	
	
	
	
}
