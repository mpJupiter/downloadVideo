<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html >
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
 	<!-- ------------以下这个css是bootstrap Validator插件的css-------------- -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrapValidator.css">
 
  </head>
  
  <body>	
	 <header>
<<<<<<< HEAD
	 	<div class="logo"><i class="fa fa-youtube-play"></i>DownloadV</div>
	 </header>
	 <main class="bg">	
  	<!-- 
  		<s:form action="customer/customer_reg" id="defaultForm" method="post" cssClass="login" validate="true">
  		<h3>请您注册</h3>
  			<div class="form-group">
  				<div class="input-group">
  					<span class="input-group-addon"><i class="fa fa-user"></i></span>
  					<input type="text" name="customer.customerName" class="form-control" placeholder="请输入用户名" >		
  				</div>
  				
  				<div class="input-group">
  					<span class="input-group-addon"><i class="fa fa-lock"></i></span>
  					<input type="password" name="customer.password" class="form-control" placeholder="请输入密码" >
  				</div>
  				
  			</div>
  			<button type="submit" class="btn btn-success btn-login">注册</button>
 		</s:form>
 		 -->
 		 <!-- html表单验证 -->
 		 <!-- 
 		 <s:form action="customer/customer_reg" id="defaultForm" method="post" cssClass="login" validate="true">
  		<h3>请您注册</h3>
  			<div class="form-group">
  				<div class="input-group">
  					<span class="input-group-addon"><i class="fa fa-user"></i></span>
  					<input type="text" name="customer.customerName" pattern="^[a-zA-Z]\w{3,15}$" class="form-control" placeholder="请输入用户名" required>		
  				</div>
  				
  				<div class="input-group">
  					<span class="input-group-addon"><i class="fa fa-lock"></i></span>
  					<input type="password" name="customer.password" class="form-control" placeholder="请输入密码" required>
  				</div>
  				
  			</div>
  			<button type="submit" class="btn btn-success btn-login">注册</button>
 		</s:form>
 		 -->
 		 
 		 <!--bootstrap Validator插件 表单验证  -->
 	<s:form action="customer/customer_reg" id="defaultForm" method="post" cssClass="login" validate="true">
	      <h3>注&nbsp;&nbsp;&nbsp;&nbsp;册</h3>
	       <div class="form-group">
	         <div class="input-group">
                 <span class="input-group-addon"><i class="fa fa-user"></i></span>
                 <input type="text" class="form-control" name="customer.name" />
             </div>
           </div>
           <div class="form-group">
	         <div class="input-group">
                 <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                 <input type="text" class="form-control" name="customer.password" />
             </div>
           </div>
            <div class="form-group">
             <div class="input-group">
               <button type="submit" class="btn btn-success btn-login">注&nbsp;&nbsp;册 </button>
             </div>
           </div>
	    </s:form>
	    
    </main>
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <!-- -------以下这个css是bootstrap Validator插件的css--------- -->
    <script src="<%=basePath%>js/bootstrapValidator.js"></script>
=======
       <div class="logo"><i class="fa fa-youtube-play"></i> Download</div>	  <!-- 验证注册信息 -->  
    </header>  
    <main class="bg">
    
	    <s:form action="customer/customer_login" method="post" cssClass="login">
	      <h3>请您注册</h3>
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
	      <button type="submit" class="btn btn-success btn-login">注册</button>
	    </s:form>
    </main>
     <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
     <script src="<%=basePath%>js/bootstrapValidator.js"></script>
>>>>>>> upstream/master
    <script type="text/javascript">
		$(document).ready(function() {
		    $('#defaultForm')
		        .bootstrapValidator({
		            message: '请输入内容',
		            feedbackIcons: {
		                valid: 'fa fa-check',
		                invalid: 'fa fa-remove',
		                validating: 'fa fa-refresh'
<<<<<<< HEAD
		                //以上三个分别是在输入域在有效、无效和验证状态时的状态显示图标，本例中是对号，错号，刷新符号
		            },
		            fields: {  //验证域
		                'customer.name': {
=======
		            },
		            fields: {
		                'customer.customerName': {
>>>>>>> upstream/master
		                    message: '用户名无效',
		                    validators: {
		                        notEmpty: {
		                            message: '用户名不得为空'
		                        },
		                        stringLength: {
<<<<<<< HEAD
		                            min: 3,
		                            max: 20,
		                            message: '用户名必须在3-20个字符之间'
		                        },
		                        regexp: {
		                            regexp: /^[a-zA-Z0-9_\.]+$/,   //正则表达式
=======
		                            min: 6,
		                            max: 20,
		                            message: '用户名必须在6-20个字符之间'
		                        },
		                        regexp: {
		                            regexp: /^[a-zA-Z0-9_\.]+$/,
>>>>>>> upstream/master
		                            message: '用户名只能包含字母、数字、点、下划线 '
		                        }	                        
		                    }
		                },
		                'customer.password': {
		                    validators: {
		                        notEmpty: {
		                            message: '密码不得为空'
		                        },
<<<<<<< HEAD
		                        different: {  // 用于比较的输入域
=======
		                        different: {
>>>>>>> upstream/master
									field: 'customer.name',
									message: '密码不能与用户名相同'
									},
		                    }
<<<<<<< HEAD
		                },

=======
>>>>>>> upstream/master
		                }
		            }
		        })
		});
	</script>
  </body>
</html>
