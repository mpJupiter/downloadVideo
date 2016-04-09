<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎光临视频下载网站</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Refresh" content="0;url=food/food_showFood">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
<link rel="shortcut icon" href="<%=basePath%>images/logo3.png">
  </head>
  
  <body>
    <header>
    <div class="account">
    <c:choose>
    <c:when test="${customer.name==null}">
    <a href="login.jsp">登录</a>
    <a href="reg.jsp">注册</a>
    </c:when>
    <c:otherwise>
    <c:out value="${customer.name}"></c:out>，欢迎您！
    </c:otherwise>
    </c:choose>
    </div>
      <div class="logo"><i class="fa fa-ul fa-cutlery"></i>FoodMUC</div> 
       </header>
       <main>
    <div><s:submit value="查 询" cssClass="search-go"></s:submit>
	         <input class="search" type="text" name="keyWords" placeholder="请输入关键词"></div>
   <div>
   <ul>
   <li>最新电影 </li>
   <li>捉妖记</li>
   <li>老炮儿</li>
   <li>栀子花开</li>
   <li>初恋这件小事</li>
   <li>左耳</li>
   <li>恶棍天使</li>
   <li>胜者为王</li>
   <li>我是证人</li>
   <li>煎饼侠</li>
   <li>烈日灼心</li>
   <li>我的少女时代</li>
   <li>从天儿降</li>
   <li>一切都好</li>
   <li>让子弹飞</li>
   <li>拯救大明星</li>
   </ul>
   </div>
   </main>
  </body>
</html>
