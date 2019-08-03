<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <head>
       <base href="<%=basePath%>">    
       <title>标题栏</title>
       <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <!--响应式布局-->
       <meta name="viewport" content="width=device-width, initial-scale=1">        
       <meta http-equiv="pragma" content="no-cache">
       <meta http-equiv="cache-control" content="no-cache">
       <meta http-equiv="expires" content="0">    
       <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
       <meta http-equiv="description" content="This is my page">
       <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
       <script type="javasrcipt/text" src="js/jquery-1.5.2.js"></script>
       <script type="javasrcipt/text" src="js/bootstrap.js"></script>
   </head>
   <body>
       <!-- container是容器类 -->
       <div class="container">
          <!-- row是容器中的一行 -->
          <div class="row">
              <!--col-行中的一列，一行分为12列。col-xs-？、sm、md、lg分别表示超小、小、中、大四种屏幕。 ？号表示站多少列 -->
	          <div class="col-lg-3" style="background-color:red;">111</div>
	          <div class="col-lg-3" style="background-color:green;">222</div>
	          <div class="col-lg-3" style="background-color:blue;">333</div>
	          <div class="col-lg-3" style="background-color:black;">444</div>
          </div>
          <hr>
          
          <table class="table table-bordered table-hover">
            <thead>
              <tr>
                <td>用户 名</td>
                <td>密码</td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>二哈</td>
                <td>250</td>
              </tr>
            </tbody>
          </table>
          
          <hr>
          
          <form class="form-horizontal">
              <div class="form-group">
                  <label class="col-lg-2">E-mail</label>
	              <div class="col-lg-10"> 
	                 <input class="form-control" type="text" name="email"/>
	              </div>
              </div>
              
              <div class="form-group">
                  <label class="col-lg-2">情况介绍:</label>
	              <div class="col-lg-10">
	                  <textarea rows="3" cols="4" class="form-control"></textarea>
	              </div>
              </div>
              <input class="btn btn-primary btn-lg" type="submit" value="提交">
             <button class="btn btn-success btn-lg">登录</button>
          </form>
       </div>
       
       
   </body>
</html>