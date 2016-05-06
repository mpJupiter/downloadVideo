<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>detail</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png"/>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css"/>
  </head>
  
  <body>
    <p>影片名: <c:out value="${video.videoName}"></c:out></p>
    <p>描述:<c:out value="${video.introduce}"></c:out></p>
    <p>类型:<c:out value="${videoType.videoTypeName}"></c:out></p>
    <p>导演:<c:out value="${video.director}"></c:out></p>
    <p>上映日期: <c:out value="${video.pubishData}"></c:out></p>
    <p>演员表:<c:out value="${video.cast}"></c:out></p>
    <p>剧照: <c:out value="${video.picture}"></c:out></p>
    <p>下载地址：<a href="${video.path}">"${video.videoName}  ${video.path}"</a></p>
    
    <br></body>
</html>
