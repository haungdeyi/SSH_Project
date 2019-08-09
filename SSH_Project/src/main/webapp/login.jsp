<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
   <head>
       <base href="<%=basePath%>">    
       <title>insert title in here</title>
       <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <!--响应式布局-->
       <meta name="viewport" content="width=device-width, initial-scale=1">        
       <meta http-equiv="pragma" content="no-cache">
       <meta http-equiv="cache-control" content="no-cache">
       <meta http-equiv="expires" content="0">    
       <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
       <meta http-equiv="description" content="This is my page">
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
       <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
       <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
   </head>

   <body>
       <div id="container-div">
         <form class="form-horizontal" style="margin-top:10%;">
            <label class="control-lable" style="color:red;text-align:right;">${loginErrorMessage}</label>
	        <div class="form-group has-feedback">
	           <label class="col-xs-3 control-lable" style="text-align:right;">用户名</label>
	           <div class="col-xs-7">
	             <input class="form-control" type="text" name="username" placeholder="请输入用户名">
	             <span class="glyphicon glyphicon-user form-control-feedback" aria-hidden="true"></span>
	           </div>
	        </div>
	        
	        <div class="form-group has-feedback">
	           <label class="col-xs-3 control-lable" style="text-align:right;">密码</label>
	           <div class="col-xs-7">
	             <input class="form-control" type="text" name="password" placeholder="请输入密码">
	             <span class="glyphicon glyphicon-eye-close form-control-feedback" aria-hidden="true"></span>
	           </div>
	        </div>
	        
	        <div class="form-group">
	           <label class="col-xs-3 control-lable" style="text-align:right;">验证码</label>
	           <div class="col-xs-7">
	             <input class="form-control" type="text" name="password" placeholder="请输入验证码">
	           </div>
	           <label class="col-xs-2 control-lable" style="margin-top:5px;">1234</label>
	        </div>
	        
	        <div class="form-group">
	           <div class="col-xs-12">
	             <input class="form-control btn-success" type="submit" value="登录">
	           </div>
	        </div>
	        
	        <div class="form-group">
	           <div class="col-xs-12">
	             <button class="form-control btn-info">关闭</button>
	           </div>
	        </div>
	     </form>
       </div> 
   </body>
</html>