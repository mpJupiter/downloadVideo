<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'download_main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="<%=basePath%>image/logo.png"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
  </head>
  
  <body>
    <header>
    <!-- 修改了导航栏   肖雪晴 -->
	    <div class="logo"><i class="fa fa-youtube-play"></i><a href="index.jsp">DownLoadV</a></div>
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

    <main class="container-fluid">
    	<div class="rpw">
    		<div class="col-md-12">
  		  		<s:form action="download/download_queryDownload" method="post">
    		    	<div class="panel panel-info">
    		    		<div class="panel-heading">
    		    			<h3 class="panel-title">我的下载</h3>
    		    		</div>
    		    		<div class="panel-body panel-body-table">
    		    			<div class="table-responsive" style="overflow-x:hidden">
    		    				<table class="table table-striped table-bordered table-hover" id="dataTables-example">
    		    					<thread>
    		    						<tr>
									      <th>序号</th>
									      <th>下载号</th>
									      <th>用户</th>
									      <th>下载视频</th>
									    </tr>
    		    					</thread>
    		    					<tbody>
    		    						<s:iterator value="downloadList" status="status">
										     <tr>
										      <td><s:property value="#status.index+1"></s:property></td>
										      <td><s:a href="download/download_showDetail?download.downloadId=%{downloadId}">
										          <s:property value="downloadId"></s:property></s:a>
										      </td>
										      <td><s:property value="customer.customerName"></s:property></td>
										      <td><s:property value="video.videoName"></s:property></td>
										     </tr>
										    </s:iterator>
    		    					</tbody>
    		    				</table>
    		    			</div>
    					</div>
    				</div>
    			</s:form>
    		</div>
    	</div>
   </main>
   	<script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/jquery.dataTables.js"></script>
    <script src="<%=basePath%>js/dataTables.bootstrap.js"></script>
    <script>
       $(document).ready(function () {
           $('#dataTables-example').dataTable({
			   "language": {
                 "lengthMenu": "每页 _MENU_ 条记录",
                 "zeroRecords": "没有找到记录",
                 "info": "第 _PAGE_ 页 ( 共 _PAGES_ 页 )",
                 "infoEmpty": "无记录",
                 "infoFiltered": "(从 _MAX_ 条记录过滤)",
				 "sInfoPostFix": "",
				 "sSearch": "搜 索 : ",
				 "sUrl": "",
				 "sEmptyTable": "表中数据为空",
				 "sLoadingRecords": "载入中...",
				 "sInfoThousands": ",",
				 "oPaginate": {
					"sFirst": "首页",
					"sPrevious": "上页",
					"sNext": "下页",
					"sLast": "末页"
				 },
				 "oAria": {
				 "sSortAscending": ": 以升序排列此列",
				 "sSortDescending": ": 以降序排列此列"
			     },
				 
             }
		   });
       });
    </script>
  </body>
</html>
