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
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css"/>
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png"/>
  </head>
  
  
   
  <body>
   <header>
	    <div class="logo"><i class="fa fa-youtube-play"></i><a href="index.jsp">DownLoadV</a></div>
	    
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
   
    <nav>
			<ul>
				<li class="active"><a href="index.jsp">首页</a></li>
				<li class=""><a href="index.jsp">电影</a></li>
				<li class=""><a href="index.jsp">电视剧</a></li>
				<li class=""><a href="index.jsp">节目</a></li>
			</ul>
	</nav>
	
	<div class="containered">
					<div style="float: right; position: relative; top: 0px; height: 40px;">
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
			
     
    <main class="container-fluid">
	    <div class="row">
		   <div class="col-md-10">               <!--让表单中的元素在同一行排着 -->
		    <s:form action="video/video_showDetail" cssClass="form-horizontal" enctype="multipart/form-data">
		         <div class="panel panel-success">
			       <div class="panel-heading"><!-- 头部用来放标题 -->
		               <h4 class="panel-title"> <i class="fa fa-youtube-play"></i> 视频详情</h4>
		           </div>
		           <div class="panel-body">
				       <div class="form-group">
			                <label class="control-label col-md-3">视频名称</label>
			                <div class="col-md-4">
                              <p> <c:out value="${video.videoName}"></c:out></p>
                           </div>
			           </div>  
			           <div class="form-group">
			                <label class="control-label col-md-3">视频简介</label>
			                <div class="col-md-6">
                              <p> <c:out value="${video.introduce}"></c:out></p>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">视频类型</label>
			                <div class="col-md-4">
                              <p> <c:out value="${videoType.videoTypeName}"></c:out></p>
                           </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">导演</label>
			                <div class="col-md-4">
                              <p> <c:out value="${video.director}"></c:out></p>
                           </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">发行日期</label>
			                <div class="col-md-4">
                              <p>  <c:out value="${video.pubishData}"></c:out></p>
                           </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">演员表</label>
			                <div class="col-md-4">
                              <p> <c:out value="${video.cast}"></c:out></p>
                           </div>
			           </div>
			           
			           <div class="form-group">
			                <label class="control-label col-md-3">剧照</label>
			                <div class="col-md-4">
                                     <p>  <c:out value="${video.picture}"></c:out></p>
                            </div>
			           </div>
			           
			           <div class="form-group">
			                <label class="control-label col-md-3">路径</label>
			                <div class="col-md-4">
                              <p> <a href="${video.path}">"${video.videoName}  ${video.path}"</a></p>
                            </div>
			           </div>
			           
			            
				   </div>
				</div>
		    </s:form>
		  </div>
	   </div>
	</main>
	<!-- 三者顺序不能错 -->
	<script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileupload.js"></script>

   </body>
</html>
