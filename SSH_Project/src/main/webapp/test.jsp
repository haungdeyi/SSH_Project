<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/ref/taglib.jsp" %>
<html>
  <head>
    <%@ include file="/ref/header.jsp" %>
    <title></title>
  </head>
  
  <body>
    <form action="${pageContext.request.contextPath}/saveDepartment.action" method="POST">
       <input type="text" name="name"/>
       <input type="text" name="address"/>
       <input type="submit" value="提交">
    </form>
    <a href="${pageContext.request.contextPath}/test.action">页面调试</a>
  </body>
</html>
