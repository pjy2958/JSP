<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/14
  Time: 9:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cName = request.getParameter("cName");
	String cValue = request.getParameter("cValue");
    String cAge = request.getParameter("cAge");

    //encoding
	cName = URLEncoder.encode(cName, "utf-8");
	cValue = URLEncoder.encode(cValue, "utf-8");

	// 쿠키생성
	Cookie cookie = new Cookie(cName, cValue);

    // 유효시간 설정
	if(cAge != null && cAge.trim().length() > 0)
        cookie.setMaxAge(Integer.parseInt(cAge) * 60);

	// 쿠키전송
	response.addCookie(cookie);
%>
<html>
<head>
	<title>Title</title>
</head>
<body>
	<h2>쿠키 설정 완료</h2>
	<a href="get.jsp">설정된 쿠키 확인</a>
</body>
</html>
