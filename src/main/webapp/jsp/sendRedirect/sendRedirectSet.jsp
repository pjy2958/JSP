<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/13
  Time: 3:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<h2>결과화면</h2>
<c:if test="${param.id == 'admin'}">
	<%
		response.sendRedirect("admin.jsp");
	%>
</c:if>
<c:if test="${param.id != 'admin'}">
	<%
		response.sendRedirect("user.jsp?id=" + request.getParameter("id"));
	%>
</c:if>
</body>
</html>
