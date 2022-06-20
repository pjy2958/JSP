<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/14
  Time: 10:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	Cookie cookie1 = new Cookie("type01", URLEncoder.encode("루트설정", "utf-8"));
	cookie1.setPath("/");
    Cookie cookie2 = new Cookie("type02", URLEncoder.encode("/jsp/cookie/type02설정", "utf-8"));
    cookie2.setPath("/jsp/cookie/type02");
    Cookie cookie3 = new Cookie("type03", URLEncoder.encode("/jsp/cookie/type03설정", "utf-8"));
    cookie3.setPath("/jsp/cookie/type03");
	Cookie cookie4 = new Cookie("type04", URLEncoder.encode("/jsp/cookie/type04설정", "utf-8"));
	cookie4.setPath("/jsp/cookie/type04");

	cookie1.setMaxAge(0);
	cookie2.setMaxAge(0);
	cookie3.setMaxAge(0);
	cookie4.setMaxAge(0);

    response.addCookie(cookie1);
    response.addCookie(cookie2);
    response.addCookie(cookie3);
    response.addCookie(cookie4);
%>
<html>
<head>
	<title>Title</title>
</head>
<body>
	<h2>쿠키 삭제 완료</h2>
	<a href="get.jsp">설정된 쿠키 확인</a>
</body>
</html>
