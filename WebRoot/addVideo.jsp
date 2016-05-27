<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addVideo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png"/>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css"/>
	
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-fileupload.js"></script>
  </head>
  
  <body>
  <header>
       <div class="logo"><i class="fa fa-youtube-play"></i>Download</div>
       <div class="account">
          <c:choose>
          <c:when test="${customer.customerName==null}">
             <a href="reg.jsp">注册</a>
             <a href="login.jsp">登录</a>
          </c:when>
          <c:otherwise>
          <c:out value="${customer.customerName}"></c:out>，欢迎您！
          </c:otherwise>
          </c:choose>
       </div>
       </header>
       <main class="container-fluid">
       <div class="row">
          <div class="col-md-10">
            <s:form action="video/video_addVideo" cssClass="form-horizontal" enctype="multipart/form-data">
             <div class="panel panel-success">
             <div class="panel-heading">
               <h4 class="panel-title"><i class="fa fa-download"></i>添加视频</h4>
             </div>
             <div class="panel-body">
             <div class="form-group">
                <label class="control-label col-md-3">影片名</label>
                <div class="col-md-4">
                   <input type="text" name="video.videoName" class="form-control input-sm" required> 
                </div>
             </div>
               <div class="form-group">
                <label class="control-label col-md-3">描述</label>
                <div class="col-md-2">
                   <input type="text" name="video.introduce" class="form-control input-sm" required> 
                </div>
             </div>
              <div class="form-group">
                <label class="control-label col-md-3">类型</label>
                <div class="col-md-4">
                   <input type="text" name="video.videoType" class="form-control input-sm" required> 
                </div>
             </div>
              <div class="form-group">
                <label class="control-label col-md-3">导演</label>
                <div class="col-md-2">
                   <input type="text" name="video.director" class="form-control input-sm" required> 
                </div>
             </div>
              <div class="form-group">
                <label class="control-label col-md-3">上映日期</label>
                <div class="col-md-4">
                   <input type="text" name="video.publishData" class="form-control input-sm" required> 
                </div>
             </div>
              <div class="form-group">
                <label class="control-label col-md-3">主要演员</label>
                <div class="col-md-2">
                   <input type="text" name="video.cast" class="form-control input-sm" required> 
                </div>
             </div>
              <div class="form-group">
                <label class="control-label col-md-3">影片照</label>
                <div class="col-md-4">
                   <div  class="fileupload fileupload-new" data-provides="fileupload">
                   <div class="fileupload-new thumbnail" style="with:200px;height:150px;">
                      <img src="<%=basePath%>upload/demoUpload.jpg" alt=""/>
                   </div>
                   <div class="fileupload-preview fileupload-exists thumbnail" style="max-width:200px;max-height:20px;">
                </div>
             </div>
             <span class="btn btn-file btn-primary"><span class="fileupload-new">浏览</span>
             <span class="fileupload-exists">浏览</span><input type="file" name="videoPhoto"/></span>
             <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">取消</a>
              <div class="form-group">
                <label class="control-label col-md-3">路径</label>
                <div class="col-md-4">
                   <input type="text" name="video.path" class="form-control input-sm" required> 
                </div>
             </div>
             </div>
             </div>
             <div class="form-group col-md-3">
               <button type="submit" class="btn btn-success pull-right">提 交</button>
             </div>
             </div>
             </div>
            </s:form>
          </div>
       </div>
       </main>
	<script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileupload.js"></script>
  </body>
</html>
