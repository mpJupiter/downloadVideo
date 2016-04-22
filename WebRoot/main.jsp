<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎光临视频下载网站</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css"/>
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png"/>
  </head>
  
  <body>
  
	<header>
	    <div class="logo"><i class="fa fa-youtube-play"></i><a href="index.jsp">DownLoadV</a></div>
<!-- 	    
	    <nav>
			<ul>
				<li class="active"><a href="index.jsp">首页</a></li>
				<li class=""><a href="index.jsp">电影</a></li>
				<li class=""><a href="index.jsp">电视剧</a></li>
				<li class=""><a href="index.jsp">节目</a></li>
			</ul>
		</nav>
	 -->
	 <div class="containered">
					<div style="float: left;margin-left:500px; position: relative; top:20px; height: 40px;">
						<div class="bdsharebuttonbox">
							<a href="#" class="bds_more" data-cmd="more"></a>
							<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
							<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
							<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
							<a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
							<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
						</div>
						<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
						</script>
					</div>
			</div>
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

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     <!-- <a class="navbar-brand" href="#">Brand</a> -->
      <a class="navbar-brand" href="#">
        <img alt="Brand" src="images/logo.png">
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>
        <li><a href="#">电影</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">类型 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" action = "video/video_queryVideo" method = "post" role="search">
        <div class="form-group">
          <input type="text" class="form-control" title="关键词" name="keyWords" placeholder="输入关键词...">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">电视剧</a></li>
        <li><a href="#">节目</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
  
			
</nav>
	<main>	
		
		<s:form action = "video/video_queryVideo" method = "post">			
		 <ul>
	      <s:if test="#session.customer.customerName =='admin'">			
				<li>
					<div class="add"><a href="addVideo.jsp"><i class="fa fa-plus"></i>添加影片</a></div>
				</li>	
	        	<s:iterator value="videoList" status="status">
					<li>
            			<img src="<%=basePath%><s:property value='picture'/>">
            			<p>
              				<a href="video/video_showDetail?video.videoId=<s:property value='videoId'/>">
                				<s:property value="videoName"/>
              				</a>
              				<a href="video/video_showEdit?video.videoId=<s:property value='videoId'/>">
            		    		<i class = "fa fa-pencil"></i>
              				</a>
          		    		<a href="video/video_deleteVideo?video.videoId=<s:property value='vieoId'/>">
           	 	    			<i class = "fa fa-trash"></i></a>
           	 	    		<a href ="<%=basePath%><s:property value='path'/>">
            		  	 		<i class = "fa fa-download"></i></a>
            			</p>
          			</li>	
				</s:iterator>
		 	</s:if>
		 	<s:else>
		 		<s:iterator value="videoList" status="status">
		 			<li>
		 				<img src="<%=basePath%><s:property value='picture'/>"/>
		 				<p>
		 					<a href="video/video_showDetail?video.videoId=<s:property value='videoId'/>">
                				<s:property value="videoName"/>
              				</a>
		 				<a href="download/download_addDownload?video.videoId=<s:property value='videoId'/>&customer.customerName=<s:property value='#session.customer.customerName'/>" class="add-download">
		 						<i class="fa fa-download"></i>下载
		 					</a>
		 					<!-- <a href="<%=basePath%><s:property value='path'/>"class="add-download">
		 						<i class="fa fa-download"></i>
		 					</a>
		 					 -->
		 				</p>
		 			</li>
		 		</s:iterator>
		 	</s:else>
          		</ul>
          		
          		
			</s:form>
		</main>
	</body>
</html>
