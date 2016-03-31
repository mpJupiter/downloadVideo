<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Edit</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css"/>
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <s:form action="video/video_editVideo">
  <h1>修改电影</h1>
  <s:hidden name="video.videoId"></s:hidden>
  <s:textfield name="video.videoName" label="影片名">影片名</s:textfield><br>
      <s:textfield name="video.introduce" label="描述">描述</s:textfield><br>
      <s:textfield name="video.videoType" label="类型">类型</s:textfield><br>
      <s:textfield name="video.director" label="导演">导演</s:textfield><br>
      <s:textfield name="video.publisData" label="上映日期">上映日期</s:textfield><br>
      <s:textfield name="video.cast" label="演员">演员</s:textfield><br>
      <s:textfield name="video.picture" label="剧照">剧照</s:textfield><br>
      <s:textfield name="video.path" label="路径">路径</s:textfield><br>
      <s:submit value="提交"></s:submit>       
</s:form>   
 <br>
  </body>
</html>
