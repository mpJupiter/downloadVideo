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
    
    <title>显示所有Video</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<link rel="shortcut icon" href="<%=basePath%>images/logo2.png">
	
  </head>
  
  <body>
    <header>
       <div class="logo"><i class="fa fa-ul fa-download"></i> Download</div>
       <div class="account">
         <c:choose>
	       <c:when test="${customer.customerName ==null}">
	         <a href="reg.jsp">注册</a>
	         <a href="login.jsp">登录</a>
	       </c:when>
	       <c:otherwise>
	         <c:out value="${customer.customerName}"></c:out>, 欢迎您!
	       </c:otherwise>
	     </c:choose>
		    
       </div>
       
		    
    </header>

     <main>
	    <s:form action="VIDEO/video_queryVideo" method="post">
            <div class="form-inline search-box">
              <div class="form-group pull-right mr200">
                <input class="search-field form-control input-sm" title="关键词" name="keyWords" placeholder="输入关键词...">
                <button class="btn btn-info btn-sm" type="submit">搜  索</button>
              </div> 
            </div>
	      <ul>
	      <s:if test="#session.customer.customerName =='admin'">
	        <li>		        
		            <div class="add"><a href="add.jsp"><i class="fa fa-plus"></i> 添加视频</a></div>
		              <p>点击上面的链接可以添加一种视频</p>		        
	        </li>
	        <s:iterator value="videoList" status="status">
	          <li>
	             <img src="<%=basePath%><s:property value='picture'/>">
	             <p>
	                <a href="video/video_showDetail?video.videoId=<s:property value='videoId'/>">
	                  <s:property value="videoName"/>
	                </a>
	                <a href="video/video_showEdit?video.videoId=<s:property 
	                  value='videoId'/>">
	                  <i class="fa fa-pencil"></i> 
	                </a>
	                &nbsp;&nbsp;<a href="video/video_deleteVideo?video.videoId=<s:property 
	                  value='videoId'/>">
	                  <i class="fa fa-trash"></i> 
	                </a>
	             </p>
	          </li>
	        </s:iterator>
	        </s:if>
	        <s:else>
	          <s:iterator value="videoList" status="status">
	          <li>
	             <img src="<%=basePath%><s:property value='picture'/>">
	             <p>
	                <a href="video/video_showDetail?video.videoId=<s:property value='videoId'/>">
	                  <s:property value="videoName"/>
	                </a>
	                </a>
	             </p>
	          </li>
	        </s:iterator>
	        </s:else>
	      </ul>
	    </s:form>
	</main>
  </body>
</html>
