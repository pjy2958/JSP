<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/14
  Time: 1:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
	설정된 ID : ${sessionScope.id}<br>
	설정된 PASSWORD : ${sessionScope.password}<br>

	<a href="remove.jsp">세션 삭제</a><br>
</body>
</html>