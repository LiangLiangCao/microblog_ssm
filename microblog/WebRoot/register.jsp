<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
    <link href="webstyle.css" rel="stylesheet">
    
  </head>
  
  
  
<body>
	<div class="loginpage">
		<div class="UserName" >用户名：<input type="text" id="username"></div>
	    <div class="password" >密&nbsp;码：<input type="text" id="password"></div>
	    <div class="niceName" >昵&nbsp;称：<input type="text" id="nicename"></div>
	    <button class="regist">注&nbsp;册</button>
    </div>
</body>
</html>

