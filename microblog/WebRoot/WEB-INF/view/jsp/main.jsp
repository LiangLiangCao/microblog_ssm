<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<script type="text/javascript" src="<%=request.getContextPath()%>/resource/js/jquery-1.8.2.js"></script>
    
    <link href="<%=request.getContextPath()%>/resource/css/webstyle.css" rel="stylesheet">
	 
  </head>


<body>
	<div class="main">
	 
        <div class="texta">
    		<form action="${pageContext.request.contextPath }/topic/insertTopic" method="post">
	        	<textarea id="webtext" name="topicWebtext" placeholder="说点什么吧..."></textarea> 
	           	<input type="submit" value="提交" class="send"/>
           	</form>
        </div>
        
        <c:if test="${!empty requestScope.topicList}">
        	<c:forEach var="t" items="${requestScope.topicList}">
        		<div class="webcontent">
        			<a href="##">
        				<c:if test="${sessionScope.loginUser.userName != t.user.userName }"> 
        					${t.user.userName}:
        				</c:if>
        				<c:if test="${sessionScope.loginUser.userName == t.user.userName }"> 
        					自己:
        				</c:if>
        			
        		    </a> ${t.topicWebtext}
        			<a class="yizan"> 
	        			<c:if test="${!empty t.userList}">
	        				<c:forEach var="u" items="${t.userList}">  
	        					<c:forEach var="v" items="${u.userList}">
	        						${v.userName}
	        					</c:forEach>
	        				</c:forEach>
	        				已点赞
	        			</c:if>
        			
        			</a>
        			<a class="zan" href="${pageContext.request.contextPath }/servlet/DianpraiseAction?topicId=${t.topicId }">点赞(${t.praiseCount })</a> 
        		<c:if test="${sessionScope.loginUser.userName == t.user.userName }"> 
        			<a href="${pageContext.request.contextPath }/topic/deleteTopic?topicId=${t.topicId }" class="delete">删除</a>
        		</c:if> 
        		
        		</div>
        	</c:forEach> 
        </c:if>
        
    </div>
</body>
</html>