<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>download_detail</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="<%=basePath%>image/logo.png"/>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">

  </head>
  
  <body>
  <p>下载号： <s:property value="download.downloadId"></s:property></p>
  <p>下载用户:<s:property value="download.customer.customerName"></s:property></p>
  <p>下载：<s:property value="download.video.videoName"></s:property></p>
  </body>
</html>
