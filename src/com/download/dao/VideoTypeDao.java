package com.download.dao;

import java.util.*;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.download.model.Videotype;

@Service @Transactional
public class VideoTypeDao {
      @Resource SessionFactory factory;
      public void addVideotype(Videotype videotype) throws Exception{
    	  Session s=factory.getCurrentSession();
    	  s.save(videotype);
      }
      public void deleteVideotype(String vnum)throws Exception{
    	  Session s=factory.getCurrentSession();
    	  Object videotype=s.load(Videotype.class, vnum);
    	  s.delete(videotype);
      }
      public void updateVideotype(Videotype videotype) throws Exception{
    	  Session s=factory.getCurrentSession();
    	  s.update(videotype);
      }
      public ArrayList<Videotype> QueryAllVideotype(){
    	  Session s=factory.getCurrentSession();
    	  String hql="From Videotype";
    	  Query q=s.createQuery(hql);
    	  List videotypeList=q.list();
    	  return(ArrayList<Videotype>) videotypeList;
      }
      public Videotype GetVideotypeByNum(String vnum){
    	  Session s=factory.getCurrentSession();
    	  Videotype videotype=(Videotype)s.get(Videotype.class, vnum);
    	  return videotype;
      }
      public ArrayList<Videotype> QueryVideotype(String videoTypeName){
    	  Session s=factory.getCurrentSession();
    	  String hql="From Videotype videotype where 1=1";
    	  if(!videoTypeName.equals("")) hql=hql+"and videotype.videoTypeName like '%"+videoTypeName+"%'";
    	  Query q=s.createQuery(hql);
    	  List videotypeList=q.list();
    	  return(ArrayList<Videotype>) videotypeList;
      }
}
