<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/14
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	Cookie[] cookies = request.getCookies();

	StringBuilder sb = new StringBuilder();
	for (Cookie cookie : cookies) {
		String cName = cookie.getName();
		String cValue = cookie.getValue();

		// decoding
		cName = URLDecoder.decode(cName, "utf-8");
		cValue = URLDecoder.decode(cValue, "utf-8");

		sb.append("쿠키이름 : " + cName + ", 쿠키 값 : " + cValue + "<br>");
	}
%>
<html>
<head>
	<title>Title</title>
</head>
<body>
<h2>설정된 쿠키 확인</h2>
<%= sb.toString() %>
<a href="makeForm.jsp">쿠키설정 이동</a>
</body>
</html>