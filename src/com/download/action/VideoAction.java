package com.download.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.download.dao.VideoDao;
import com.download.dao.VideoTypeDao;
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
	private File videoPhoto;
    private String videoPhotoFileName;
    private String videoPhotoContentType;
    private File videoFile;
    private String videoFileName;
    private String videoFileContentType;
    
    
    
	
	public File getVideoFile() {
		return videoFile;
	}
	public void setVideoFile(File videoFile) {
		this.videoFile = videoFile;
	}
	public String getVideoFileName() {
		return videoFileName;
	}
	public void setVideoFileName(String videoFileName) {
		this.videoFileName = videoFileName;
	}
	public String getVideoFileContentType() {
		return videoFileContentType;
	}
	public void setVideoFileContentType(String videoFileContentType) {
		this.videoFileContentType = videoFileContentType;
	}
	public File getVideoPhoto() {
		return videoPhoto;
	}
	public void setVideoPhoto(File videoPhoto) {
		this.videoPhoto = videoPhoto;
	}
	public String getVideoPhotoFileName() {
		return videoPhotoFileName;
	}
	public void setVideoPhotoFileName(String videoPhotoFileName) {
		this.videoPhotoFileName = videoPhotoFileName;
	}
	public String getVideoPhotoContentType() {
		return videoPhotoContentType;
	}
	public void setVideoPhotoContentType(String videoPhotoContentType) {
		this.videoPhotoContentType = videoPhotoContentType;
	}
	
	
	
	
	
	/*添加videophoto*/
    public String addVideo() throws Exception{
		String path = ServletActionContext.getServletContext().getRealPath("/upload"); 
        /*处理图片上传*/
        String videoPhotoFileName = ""; 
   	 	if(videoPhoto!= null) {
   	 		InputStream is = new FileInputStream(videoPhoto);
   			String fileContentType = this.getVideoPhotoContentType();
   			System.out.println(fileContentType);
   			if(fileContentType.equals("image/jpeg")  || fileContentType.equals("image/pjpeg"))
   				videoPhotoFileName = UUID.randomUUID().toString() +  ".jpg";
   			else if(fileContentType.equals("image/gif"))
   				videoPhotoFileName = UUID.randomUUID().toString() +  ".gif";
   			else if(fileContentType.equals("image/png"))
   				videoPhotoFileName = UUID.randomUUID().toString() +  ".png";

   			File file = new File(path, videoPhotoFileName);
   			OutputStream os = new FileOutputStream(file);
   			byte[] b = new byte[1024];
   			int bs = 0;
   			while ((bs = is.read(b)) > 0) {
   				os.write(b, 0, bs);
   			}
   			is.close();
   			os.close();
   	 	}
        if(videoPhoto != null)
        	video.setPicture("upload/" + videoPhotoFileName);
        else
        	video.setPicture("upload/NoImage.jpg");
        
        String path1 = ServletActionContext.getServletContext().getRealPath("/video"); 
        String videoFileName = ""; 
   	 	if(videoFile!= null) {
   	 		InputStream is = new FileInputStream(videoFile);
   			String fileContentType = this.getVideoFileContentType();
   			System.out.println(fileContentType);
   			if(fileContentType.equals("video/x-avi"))
   				videoFileName = UUID.randomUUID().toString() +  ".avi";
   			else if(fileContentType.equals("video/x-mpeg"))
   				videoFileName = UUID.randomUUID().toString() +  ".m1v";
   			else if(fileContentType.equals("video/mpeg4"))
   				videoFileName = UUID.randomUUID().toString() +  ".mp4";
   			else if(fileContentType.equals("video/x-ms-wmv"))
   				videoFileName = UUID.randomUUID().toString() +  ".wmv";
   			else if(fileContentType.equals("video/x-matroska"))
   				videoFileName = UUID.randomUUID().toString() +  ".mkv";
   			
   			
   			File file = new File(path1, videoFileName);
   			OutputStream os1 = new FileOutputStream(file);
   			byte[] b = new byte[1024];
   			int bs = 0;
   			while ((bs = is.read(b)) > 0) {
   				os1.write(b, 0, bs);
   			}
   			is.close();
   			os1.close();
   	 	}
        if(videoFile != null)
        	video.setPath("video/" + videoFileName);
        else
        	video.setPath("images.jpg");
        
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