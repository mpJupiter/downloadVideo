<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="<%=basePath%>image/logo.png"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css"/>
  </head>
  
  <body>
  
	 	
	 <header>
	 	<div class="logo"><i class="fa fa-youtube-play"></i></div>
	 </header>
	 <main class="bg">	
  		<s:form action="customer/customer_reg" id="defaultForm" method="post" cssClass="login" validate="true">
  		<h3>请您注册</h3>
  			<div class="form-group">
  				<div class="input-group">
  					<span class="input-group-addon"><i class="fa fa-user"></i></span>
  					<input type="text" name="customer.customerName" class="form-control" placeholder="请输入用户名"/>		
  				</div>
  				
  				<div class="input-group">
  					<span class="input-group-addon"><i class="fa fa-lock"></i></span>
  					<input type="password" name="customer.password" class="form-control" placeholder="请输入密码">
  				</div>
  				
  			</div>
  			<button type="submit" class="btn btn-success btn-login">注册</button>
 		</s:form>

 		  
  	</main> 
  </body>
  		
  	</main>
  
  </body>
</html>
