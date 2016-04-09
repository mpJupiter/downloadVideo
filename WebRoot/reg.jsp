<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="<%=basePath%>images//logo3.png">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<link rel="stylesheet" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
  </head>
  
  <body>
<header>
<div class="logo"><i class="fa fa-ul fa-download">DownloadVideo</i></div>
</header>
<main class="bg">
    <s:form action="customer/customer_reg" method="post" cssClass="login" validate="true">
    <h3>注&nbsp;&nbsp;&nbsp;&nbsp;册</h3>
    <div class="form-group">
    <div class="input-group">
    <span class="input-group-addon"><i class="fa fa-user"></i></span>
    <input type="text" name="customer.customerName" class="form-control" placeholder="请输入用户名">
    </div>
    <s:fielderror fieldName="customer.customerName" cssClass="fielderror"/>
    <div class="input-group">
    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
    <input type="password" name="customer.password" class="form-control" placeholder="请输入密码">
    </div>
    <s:fielderror fieldName="customer.password" cssClass="fielderror"/>
    </div>
   <button type="submit" class="btn btn-success btn-login">注 册</button>
    </s:form>
    </main>
    <br>
  </body>
</html>
