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
       <meta http-equiv="pragma" content="no-cache">
       <meta http-equiv="cache-control" content="no-cache">
       <meta http-equiv="expires" content="0">    
       <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
       <meta http-equiv="description" content="This is my page">
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/resetDefaultCss.css">
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
       <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
   </head>
   <body>
        <div id="topDiv">顶部</div>
        <div id="leftdiv">
	       <div class="title">
	          <h1>课程列表</h1>
	       </div>
	       
	       <div class="course_list">
	         <ul class="first_list">
	          <li class="first_item">
	             <div class="first_title">
	                <h3>IT培训</h3>
	             </div>
	             <ul class="second_list">
	               <li class="second_item">C语言</li>
	               <li class="second_item">java</li>
	               <li class="second_item">C++</li>
	               <li class="second_item">前端</li>
	             </ul>
	           </li>
	           
	           <li class="first_item">
	             <div class="first_title">
	                <h3>技能培训</h3>
	             </div>
	             <ul class="second_list">
	               <li class="second_item">美容</li>
	               <li class="second_item">美发</li>
	               <li class="second_item">挖掘机</li>
	               <li class="second_item">厨师</li> 
	             </ul>
	           </li>
	           
	           <li class="first_item">
	              <div class="first_title">
	                <h3>语言培训</h3>
	              </div>
	                <ul class="second_list">
	                  <li class="second_item">粤语</li>
	                  <li class="second_item">英语</li>
	                  <li class="second_item">法语</li>
	                  <li class="second_item">葡萄牙语</li>
	                </ul>
	           </li>
	           
	           <li class="first_item">
	             <div class="first_title">
	                <h3>兴趣爱好</h3>
	             </div>
	                <ul class="second_list">
	                  <li class="second_item">篮球</li>
	                  <li class="second_item">羽毛球</li>
	                  <li class="second_item">足球</li>
	                  <li class="second_item">游泳</li>
	                  <li class="second_item">乒乓球</li>
	                  <li class="second_item">钢琴</li>
	                  <li class="second_item">美术</li>
	                </ul>
	           </li>
	         </ul>
	       </div>
       </div>
       <div id="rightDiv">
         <div id="rightDiv_top">
          <table id="table">
            <thead>
              <tr>
                <td class="table_message">用户名</td>
                <td class="table_message">密码</td>
              </tr>
            </thead>
            <tbody id="refresh">
            </tbody>
          </table>
        </div>
        <div id="rightDiv_bottom">
           <ul>
             <li><a href="#" class="btn">总共</a></li>
             <li><a href="#">当前页</a></li>
             <li><a href="#">上一页</a></li>
             <li><a href="#">下一页</a></li>
           </ul>
        </div>
       </div>
        
   </body>
   
   <script type="text/javascript">
       $(document).ready(function(){
    	   var second_list = $(".first_item");
    	   //鼠标移动到一级标题时展开
    	   second_list.mouseover(function(){
    	   	$(this).find("ul").css("display","block");
    	   	$(this).css("background-color","green");
    	   });
    	   
    	   //鼠标离开一级标题时收起
    	   second_list.mouseout(function(){
    	   	$(this).find("ul").css("display","none");
    	   	$(this).css("background-color","");
    	   });
    	   
    	   //refresh();
       });

       function refresh(){
    	   $.ajax({
    		   url:"${pageContext.request.contextPath}/refresh",
    		   type:"post",
    		   dataType:"json",
    		   async:true,
    		   success:function(data){
    			   var table = $("#refresh");
    			   //table.clear();
    			   for(var i=0;i<data.length;i++){
    				  var row = "<tr><td>" + data[i].name + "</td><td>" + data[i].password +"</td></tr>";
    				  table.append(row);
    			   }  
    		   },
    		   error:function(){
    			   alert("请求失败");
    		   }
    		   
    	   });
       }
   </script>
</html>