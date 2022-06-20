<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/14
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	session.invalidate();
%>
<html>
<head>
	<title>Title</title>
</head>
<body>
	<h2>세션 삭제 완료</h2>
	<a href="get.jsp">세션 정보 확인</a>
</body>
</html>
