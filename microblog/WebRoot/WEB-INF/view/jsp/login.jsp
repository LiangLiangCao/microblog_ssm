<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查询所有用户</title>
</head>
 
<body>

	<div class="loginpage">
		<form action="${pageContext.request.contextPath }/user/login" method="post">
			<div class="UserName" ><br>用户名：<input type="text" id="username" name="userName"></div>
		    <div class="password" >密&nbsp;码：<input type="text" id="password" name="userPassword"></div>
		    <input class="login" type="submit" value="登录"/>
		    <button class="goregist">去注册</button>
	    </form>
    </div>
    
</body>
</html>