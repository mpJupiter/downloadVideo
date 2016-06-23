<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>最近更新</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-fileupload.js"></script>
	
	<link rel="shortcut icon" href="<%=basePath%>image/logo.png">
	
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
		
	<main>

	    <nav>
			<ul>
				<li class="active"><a href="index.jsp">首页</a></li>
				<li class=""><a href="updaterecently.jsp">最近更新</a></li>
				<li class=""><a href="film.jsp">电影</a></li>
				<li class=""><a href="index.jsp">电视剧</a></li>
				<li class=""><a href="show.jsp">节目</a></li>
			</ul>
		</nav>
		<s:form action = "video/video_queryVideo" method = "post">
			<div class="form-inline search-box">
              <div class="form-group pull-right mr200">
                <input class="search-field form-control input-sm" title="关键词" name="keyWords" placeholder="输入关键词...">
                <button class="btn btn-info btn-sm" type="submit">搜  索</button>
              </div> 
            </div>

			<div class="containered">
					<div style="float: right; position: relative; top: 0px; height: 40px;">
						<div class="bdsharebuttonbox">
							<a href="#" class="bds_more" data-cmd="more"></a>
							<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
							<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
							<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
							<a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
							<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
							<!-- 
							<a href="#" onclick="javascript:window.external.AddFavorite('http://www.ygdy8.net', '电影天堂-ygdy8.net')" target="_self"><font color=red>收藏本站</font></a></a></li><li>
                            <a href="index.html" onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.ygdy8.net/');return(false);" style="behavior: url(#default#homepage)">设为主页</a>
						     -->
						</div>
						<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
						</script>
					</div>
			</div>
			
		       		
			</s:form>
		</main>
  </body>
</html>
