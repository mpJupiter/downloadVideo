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
<link rel="shortcut icon" href="<%=basePath%>images/logo.png"/>	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css"/>	
  </head>
  
  <body>

    <s:form action="customer/customer_reg" method="post">
      <s:textfield name="customer.customerName" label="用户名">用户名：</s:textfield>
      <s:textfield name="customer.password" label="密码">密码：</s:textfield>
      <s:submit value="提交"></s:submit>
      <s:reset value="重填"></s:reset>
    </s:form>
    <br>
  </body>
</html>
