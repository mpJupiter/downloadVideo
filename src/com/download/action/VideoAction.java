package com.download.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.*;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.download.dao.CustomerDao;
import com.download.dao.VideoDao;
import com.download.dao.VideoTypeDao;
import com.download.model.Customer;
import com.download.model.Video;
import com.download.model.Videotype;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class VideoAction extends ActionSupport{
	@Resource VideoDao videoDao;
	@Resource VideoTypeDao videoTypeDao;
	private Video video;
	private static final long serialVersionUID = 1L;
	
	public Video getVideo() {
		return video;
	}
	public void setVideo(Video video) {
		this.video = video;
	}
	private List<Video> videoList;
	
	public List<Video> getVideoList() {
		return videoList;
	}
	public void setVideoList(List<Video> videoList) {
		this.videoList = videoList;
	}
	public File videoFile;
	 public String videoFileFileName;
	 public String videoFileContentType;
	 public void setVideoFile(File videoFile) {
			this.videoFile = videoFile;
		}
		public String getVideoFileFileName() {
			return videoFileFileName;
		}
		public void setVideoFileFileName(String videoFileFileName) {
			this.videoFileFileName = videoFileFileName;
		}
		public String getVideoFileContentType() {
			return videoFileContentType;
		}
		public void setVideoFileContentType(String videoFileContentType) {
			this.videoFileContentType = videoFileContentType;
		}
	@SuppressWarnings("deprecation")
    public String AddPhoto() {
		
        ActionContext ctx = ActionContext.getContext();
        int id = video.getVideoId();
        Video db_book = videoDao.GetVideoById(id);
        if(null != db_book) {
            ctx.put("error",  java.net.URLEncoder.encode("该videoid已经存在!"));
            return "error";
        }
        if(true) {
            Videotype videoType = videoTypeDao.GetVideotypeByVideoTypeId(video.getVideotype().getVideoTypeId());
            video.setVideotype(videoType);
            }
        try {
                String path = ServletActionContext.getServletContext().getRealPath("/video"); 
                /*处理上传*/
                String videoFileName = ""; 
           	 	if(videoFile != null) {
           	 		InputStream is = new FileInputStream(videoFile);
           			String fileContentType = this.getVideoFileContentType();
           			if(fileContentType.equals("video/flv"))
           				videoFileName = UUID.randomUUID().toString() +  ".jpg";
           			else if(fileContentType.equals("video/rmvb"))
           				videoFileName = UUID.randomUUID().toString() +  ".rmvb";
           			else if(fileContentType.equals("video/mkv"))
           				videoFileName = UUID.randomUUID().toString() +  ".mkv";
           			else if(fileContentType.equals("video/mp4"))
           				videoFileName = UUID.randomUUID().toString() +  ".mp4";
           			else {
           				ctx.put("error",  java.net.URLEncoder.encode("上传视频不正确!"));
           				return "error";
           			}
           			File file = new File(path, videoFileName);
           			OutputStream os = new FileOutputStream(file);
           			byte[] b = new byte[1024];
           			int bs = 0;
           			while ((bs = is.read(b)) > 0) {
           				os.write(b, 0, bs);
           			}
           			is.close();
           			os.close();
           	 	}
                if(videoFile != null)
                	video.setPath("video/" + videoFileName);
                else
                	video.setPath("video/NoVideo.mp4");
                videoDao.addVideo(video);
                ctx.put("message",  java.net.URLEncoder.encode("video添加成功!"));
                return "message";
            } catch (Exception e) {
                e.printStackTrace();
                ctx.put("error",  java.net.URLEncoder.encode("video添加失败!"));
                return "error";
            }
    }
	
	public String addVideo() throws Exception{
		videoDao.addVideo(video);
		return "message";
	}
	
	public String showVideo(){
		videoList=videoDao.QueryAllVideoInfo();
		return "show_view";
	}
	public String showDetail(){
		video = videoDao.GetVideoById(video.getVideoId());
		return "detail_view";
	}
	
	public String showEdit() throws Exception{
		video = videoDao.GetVideoById(video.getVideoId());
		return "edit_view";
	}
	
	public String editVideo() throws Exception{
		videoDao.updateVideo(video);
		return "edit_message";
	}
	
	
	//删除video
	public String deleteVideo() throws Exception{
		videoDao.deleteVideo(video.getVideoId());
		return "delete_message";
	}
	
	private String keyWords;
	public String getKeyWords() {
		return keyWords;
	}
	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	//查询video
	public String queryVideo() throws Exception{
		videoList = videoDao.QueryVideoInfo(keyWords);
		return "show_view";
	}
	public Videotype videoType;


	public Videotype getVideoType() {
		return videoType;
	}
	public void setVideoType(Videotype videoType) {
		this.videoType = videoType;
	}
	
}