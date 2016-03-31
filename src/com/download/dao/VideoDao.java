package com.download.dao;

import java.util.*;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.download.model.Video;

@Service @Transactional
public class VideoDao {
      @Resource SessionFactory factory;
      //增
      public void addVideo(Video video) throws Exception{
    	  Session s=factory.getCurrentSession();
    	  s.save(video);
      }
      //删
      public void deleteVideo(Integer integer)throws Exception{
    	  Session s=factory.getCurrentSession();
    	  Object video=s.load(Video.class,integer);
    	  s.delete(video);
      }
      //改
      public void updateVideo(Video video) throws Exception{
    	  Session s=factory.getCurrentSession();
    	  s.update(video);
      }
      //查所有的video
      public ArrayList<Video> QueryAllVideo(){
    	  Session s=factory.getCurrentSession();
    	  String hql="From Video";
    	  Query q=s.createQuery(hql);
    	  List videoList=q.list();
    	  return(ArrayList<Video>) videoList;
      }
      //根据主键查
      public Video GetVideoById(Integer integer){
    	  Session s=factory.getCurrentSession();
    	  Video video=(Video)s.get(Video.class, integer);
    	  return video;
      }
      //根据查询条件查
      public ArrayList<Video> QueryVideoInfo(String videoName){
    	  Session s=factory.getCurrentSession();
    	  String hql="From Video video where 1=1";
    	  if(!videoName.equals("")) hql=hql+"and video.videoName like '%"+videoName+"%'";
    	  Query q=s.createQuery(hql);
    	  List videoList=q.list();
    	  return(ArrayList<Video>) videoList;
      }
      
     
}
