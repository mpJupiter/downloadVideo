<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加video</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-fileupload.js"></script>
	
	<link rel="shortcut icon" href="<%=basePath%>image/logo.png">
	
  </head>
  
  <body>
   <header>
	    <div class="logo"><i class="fa fa-youtube-play"></i><a href="index.jsp">DownLoadV</a></div>
	    <nav>
			<ul>
				<li class="active"><a href="index.jsp">首页</a></li>
				<li class=""><a href="index.jsp">电影</a></li>
				<li class=""><a href="index.jsp">电视剧</a></li>
				<li class=""><a href="index.jsp">节目</a></li>
			</ul>
		</nav>
	    <div class="account">
    		<c:choose>
    			<c:when test="${customer.customerName==null}">
    				<a href="login.jsp">登录</a>
    				<a href="reg.jsp">用户注册</a>
    			</c:when>
    			<c:otherwise>
    				<c:out value="${customer.customerName}"></c:out>，欢迎您！
    			</c:otherwise>
    		</c:choose>
    	</div>
	</header>
     <main class="container-fluid">
	    <div class="row">
		   <div class="col-md-10">               <!--让表单中的元素在同一行排着 -->
		    <s:form action="video/video_addVideo" cssClass="form-horizontal" enctype="multipart/form-data">
		         <div class="panel panel-success">
			       <div class="panel-heading"><!-- 头部用来放标题 -->
		               <h4 class="panel-title"> <i class="fa fa-youtube-play"></i> 添加视频</h4>
		           </div>
		           <div class="panel-body">
				       <div class="form-group">
			                <label class="control-label col-md-3">视频名称</label>
			                <div class="col-md-4">
                              <input type="text" name="video.videoName" class="form-control input-sm" required>
                           </div>
			           </div>  
			           <div class="form-group">
			                <label class="control-label col-md-3">视频简介</label>
			                <div class="col-md-6">
                              <input type="text" name="video.introduction" class="form-control input-sm" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">视频类型</label>
			                <div class="col-md-4">
                              <input type="text" name="video.videoType" class="form-control input-sm" required>
                           </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">导演</label>
			                <div class="col-md-4">
                              <input type="text" name="video.director" class="form-control input-sm" required>
                           </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">发行日期</label>
			                <div class="col-md-4">
                              <input type="text" name="video.publishData" class="form-control input-sm" required>
                           </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">演员表</label>
			                <div class="col-md-4">
                              <input type="text" name="video.cast" class="form-control input-sm" required>
                           </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">剧照</label>
			                <div class="col-md-4">
                              <div class="fileupload fileupload-new" data-provides="fileupload">
                                <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                   <img src="<%=basePath%>upload/demoUpload.jpg" alt="" />
                                </div>
                                <div class="fileupload-preview fileupload-exists thumbnail" 
                                   style="max-width: 200px; max-height:150px; line-height: 20px;">
                                </div>
                                <div>
                                   <span class="btn btn-file btn-primary"><span class="fileupload-new">浏览</span>
                                   <span class="fileupload-exists">浏览</span><input type="file" name="videoPhoto"/></span><!--input type="file" 就可以上传  name="foodPhoto"这个文件域的名字-->
                                <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">取消</a>
                                </div>
                              </div>
                            </div>
			           </div>
			           
			           <div class="form-group">
			                <label class="control-label col-md-3">路径</label>
			                <div class="col-md-4">
                              <div class="fileupload fileupload-new" data-provides="fileupload">
                                <div class="fileupload-preview fileupload-exists thumbnail" >
                                </div>
                                <div>
                                   <span class="btn btn-file btn-primary"><span class="fileupload-new">浏览</span>
                                   <span class="fileupload-exists">浏览</span><input type="file" name="videoFile"/></span><!--input type="file" 就可以上传  name="foodPhoto"这个文件域的名字-->
                                <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">取消</a>
                                </div>
                              </div>
                            </div>
			           </div>
			           
			           <div class="form-group col-md-3">
				          <button type="submit" class="btn btn-success pull-right">提  交 </button>
				       </div>
				   </div>
				</div>
		    </s:form>
		  </div>
	   </div>
	</main>
	<!-- 三者顺序不能错 -->
	<script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileupload.js"></script>
  </body>
</html>
