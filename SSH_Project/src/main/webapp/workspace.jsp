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
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/workspace.css">
       <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
       <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
       <script type="text/javascript" src="${pageContext.request.contextPath}/js/workspace.js"></script>
   </head>

   <body>
       <div id="parent-div">
         <div id="left-div" >
           <div id="headPohto" calss="container">
              <img class="img-responsive img-circle" alt="图片呢？？" src="${pageContext.request.contextPath}/image/3.jpg"/>
              <p style="text-align:center;margin:0;">用户名</p>
              <p style="text-align:center;">用户角色
                <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
              </p>
           </div>
           <div>
              <ul id="firstmenulist" class="list-unstyled lead">
                <li>业主管理<span class="glyphicon glyphicon-chevron-right"></span>
                   <ul id="secondmenulist" class="list-unstyled">
                     <li><a class="btn" href="#">录入业主信息</a></li>
                     <li><a class="btn" href="#">查看修改业主信息</a></li>
                   </ul>
                </li>
                <li>客户服务<span class="glyphicon glyphicon-chevron-right"></span>
                    <ul id="secondmenulist" class="list-unstyled">
                      <li><a class="btn" href="#">服务记录</a></li>
                      <li><a class="btn" href="#">服务质量</a></li>
                    </ul>
                </li>
                
                <li>收费管理<span class="glyphicon glyphicon-chevron-right"></span>
                    <ul id="secondmenulist" class="list-unstyled">
                      <li><a class="btn" href="#">水电气收费</a></li>
                      <li><a class="btn" href="#">商户收费</a></li>
                      <li><a class="btn" href="#">停车位收费</a></li>
                    </ul>
                </li>
                
                <li>设备管理<span class="glyphicon glyphicon-chevron-right"></span>
                    <ul id="secondmenulist" class="list-unstyled">
                      <li><a class="btn" href="#">运动设备</a></li>
                      <li><a class="btn" href="#">日常运营设备</a></li>
                    </ul>
                </li>
                
                <li>消防安保<span class="glyphicon glyphicon-chevron-right"></span>
                    <ul id="secondmenulist" class="list-unstyled">
                      <li><a class="btn" href="#">消防安全</a></li>
                      <li><a class="btn" href="#">安保环境</a></li>
                    </ul>
                </li>
                
                <li>人事管理<span class="glyphicon glyphicon-chevron-right"></span>
                   <ul id="secondmenulist" class="list-unstyled">
                      <li><a class="btn" href="#">员工管理</a></li>
                      <li><a class="btn" href="#">请假申请</a></li>
                   </ul>
                </li>
              </ul>
           </div>
         </div>
         <div id="right-top-div">
           <div class="container">
              <p class="row">尼玛</p>
              <div id="dropdown-menu-div" class="dropdown bg-info">
                 <span id="toggle" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                 个人设置<span class="caret"></span>
                 </span>
                 <ul class="dropdown-menu" role="menu" aria-labelledby="toggle">
                   <li><a href="#">个人信息</a></li>
                   <li><a href="#">我的任务</a></li>
                   <li><a href="#">我的积分</a></li>
                   <li><a href="#">我的信息</a></li>
                 </ul>
              </div>
              <span id="login" class="bg-success"><a href="${pageContext.request.contextPath}/login.jsp">登录</a></span>
              <span id="regist"><a href="#">注册</a></span>
           </div>
         </button></div>
         <div id="right-down-div">
           <div id="table-div">
             <p class="bg-success lead">用户信息</p>
             <button id="submit" class="btn btn-success" onclick="submit();">确定</button>
             <form action="${pageContext.request.contextPath}/linkToMainPage">
                 <table id="right-down-div-table" class="table table-bordered">
	              <thead>
	                <tr>
	                  <td><input type="checkbox" id="checkall"></td>
	                  <td>用户名</td>
	                  <td>性别</td>
	                  <td>年龄</td>
	                </tr>
	              </thead>
	              
	              <tbody>
	                <tr>
	                  <td><input type="checkbox" name="ids" value="aaa"></td>
	                  <td>二狗子</td>
	                  <td>男</td>
	                  <td>250</td>
	                </tr>
	                
	                 <tr>
	                  <td><input type="checkbox" name="ids" value="bbb"></td>
	                  <td>麻雷子</td>
	                  <td>女</td>
	                  <td>251</td>
	                </tr>
	              </tbody>
             </table>
             </form>
           </div>
           
           <div id="bottom-div">
              <a class="btn btn-default" disabled="disabled" href="#">总共[]页</a>
              <a class="btn btn-default" href="#">当前[]页</a>
              <a class="btn btn-default" href="#">上一页</a>
              <a class="btn btn-default" href="#">下一页</a>
           </div> 
         </div>
       </div>
   </body>
</html>