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
      public void addVideo(Video video) throws Exception{
    	  Session s=factory.getCurrentSession();
    	  s.save(video);
      }
      public void deleteVideo(String vnum)throws Exception{
    	  Session s=factory.getCurrentSession();
    	  Object video=s.load(Video.class, vnum);
    	  s.delete(video);
      }
      public void updateVideo(Video video) throws Exception{
    	  Session s=factory.getCurrentSession();
    	  s.update(video);
      }
      public ArrayList<Video> QueryAllVideo(){
    	  Session s=factory.getCurrentSession();
    	  String hql="From Video";
    	  Query q=s.createQuery(hql);
    	  List videoList=q.list();
    	  return(ArrayList<Video>) videoList;
      }
      public Video GetVideoByNum(String vnum){
    	  Session s=factory.getCurrentSession();
    	  Video video=(Video)s.get(Video.class, vnum);
    	  return video;
      }
      public ArrayList<Video> QueryVideo(String videoName){
    	  Session s=factory.getCurrentSession();
    	  String hql="From Video video where 1=1";
    	  if(!videoName.equals("")) hql=hql+"and video.videoName like '%"+videoName+"%'";
    	  Query q=s.createQuery(hql);
    	  List videoList=q.list();
    	  return(ArrayList<Video>) videoList;
      }
}
