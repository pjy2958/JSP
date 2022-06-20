<%@ page import="kr.ac.kopo.member.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/14
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");

	MemberVO member = new MemberVO(id, password);
    session.setAttribute("member", member);
%>
<html>
<head>
	<title>Title</title>
</head>
<body>
<h2>세션 설정 완료</h2>
<a href="get.jsp">설정된 세션정보 확인</a>
</body>
</html>