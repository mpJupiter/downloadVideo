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
	
	public File getVideoPath() {
		return videoPath;
	}
	public void setVideoPath(File videoPath) {
		this.videoPath = videoPath;
	}
	public String getVideoPathFileName() {
		return videoPathFileName;
	}
	public void setVideoPathFileName(String videoPathFileName) {
		this.videoPathFileName = videoPathFileName;
	}
	public String getVideoPathContentType() {
		return videoPathContentType;
	}
	public void setVideoPathContentType(String videoPathContentType) {
		this.videoPathContentType = videoPathContentType;
	}
	private File videoPath;
    private String videoPathFileName;
    private String videoPathContentType;
	
	
	
	@SuppressWarnings("deprecation")
    
	/*添加videophoto*/
	public String addVideoPhoto() throws Exception{
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
        
		videoDao.addVideo(video);
		return "message";
		
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
	
	//添加路径
	
	public class addVideo extends ActionSupport
	{
	    private String videoName;
	    private String introduction;
	    private String videoType;
	    private String directorString;
	    private String publishData;
	    private String cast;
	    private File picture;
	    private String  pictureFileName;
	    private String pictureContentType;
	    private File path;
	    private String pathFileName;
	    private String pathContentType;
	    public String getVideoName() {
			return videoName;
		}

		public void setVideoName(String videoName) {
			this.videoName = videoName;
		}

		public String getIntroduction() {
			return introduction;
		}

		public void setIntroduction(String introduction) {
			this.introduction = introduction;
		}

		public String getVideoType() {
			return videoType;
		}

		public void setVideoType(String videoType) {
			this.videoType = videoType;
		}

		public String getDirectorString() {
			return directorString;
		}

		public void setDirectorString(String directorString) {
			this.directorString = directorString;
		}

		public String getPublishData() {
			return publishData;
		}

		public void setPublishData(String publishData) {
			this.publishData = publishData;
		}

		public String getCast() {
			return cast;
		}

		public void setCast(String cast) {
			this.cast = cast;
		}

		public File getPicture() {
			return picture;
		}

		public void setPicture(File picture) {
			this.picture = picture;
		}

		public String getPictureFileName() {
			return pictureFileName;
		}

		public void setPictureFileName(String pictureFileName) {
			this.pictureFileName = pictureFileName;
		}

		public String getPictureContentType() {
			return pictureContentType;
		}

		public void setPictureContentType(String pictureContentType) {
			this.pictureContentType = pictureContentType;
		}

		public File getPath() {
			return path;
		}

		public void setPath(File path) {
			this.path = path;
		}

		public String getPathFileName() {
			return pathFileName;
		}

		public void setPathFileName(String pathFileName) {
			this.pathFileName = pathFileName;
		}

		public String getPathContentType() {
			return pathContentType;
		}

		public void setPathContentType(String pathContentType) {
			this.pathContentType = pathContentType;
		}

		//注意，file并不是指前端jsp上传过来的文件本身，而是文件上传过来存放在临时文件夹下面的文件
	    private File file;
	    
	    //提交过来的file的名字
	    private String fileFileName;
	    
	    //提交过来的file的MIME类型
	    private String fileContentType;


	    public File getFile()
	    {
	        return file;
	    }

	    public void setFile(File file)
	    {
	        this.file = file;
	    }

	    public String getFileFileName()
	    {
	        return fileFileName;
	    }

	    public void setFileFileName(String fileFileName)
	    {
	        this.fileFileName = fileFileName;
	    }

	    public String getFileContentType()
	    {
	        return fileContentType;
	    }

	    public void setFileContentType(String fileContentType)
	    {
	        this.fileContentType = fileContentType;
	    }
	    
	    @Override
	    public String execute() throws Exception
	    {
	        String root = ServletActionContext.getServletContext().getRealPath("/upload");
	        
	        InputStream is = new FileInputStream(file);
	        
	        OutputStream os = new FileOutputStream(new File(root, fileFileName));
	        
	        System.out.println("fileFileName: " + fileFileName);

	        // 因为file是存放在临时文件夹的文件，我们可以将其文件名和文件路径打印出来，看和之前的fileFileName是否相同
	        System.out.println("file: " + file.getName());
	        System.out.println("file: " + file.getPath());
	        
	        byte[] buffer = new byte[500];
	        int length = 0;
	        
	        while(-1 != (length = is.read(buffer, 0, buffer.length)))
	        {
	            os.write(buffer);
	        }
	        
	        os.close();
	        is.close();
	        
	        videoDao.addVideo(video);
			return "message";
			
	    }
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