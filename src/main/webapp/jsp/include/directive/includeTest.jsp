<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/13
  Time: 1:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common.jsp"%>
<html>
<head>
	<title>Title</title>
</head>
<body>
<h2>before include</h2>
msg : <%= msg %>
<%@ include file="one.jsp" %>
<h2>after include</h2>
</body>
</html>
