<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/07
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.type == 'S'}">
			<h2>반갑습니다 관리자님</h2>
		</c:when>
		<c:when test="${param.type == 'U'}">
			<h2>반갑습니다 일반사용자님</h2>
		</c:when>
		<c:otherwise>
			<h2>타입이 전송되지 않았습니다.</h2>
		</c:otherwise>
	</c:choose>
</body>
</html>
