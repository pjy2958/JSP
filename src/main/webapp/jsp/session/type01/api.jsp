<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/14
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String id = session.getId();
	int interval = session.getMaxInactiveInterval();

	// 세션 유효시간 변경 (2초)
	session.setMaxInactiveInterval(2);
	int interval2 = session.getMaxInactiveInterval();

    // 마지막 접근시간
	long lastTime = session.getLastAccessedTime();
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY/MM/dd hh:mm:ss");
%>
<html>
<head>
	<title>Title</title>
</head>
<body>
<h2> 세션 ID(JSESSIONID) : <%= id %>
</h2>
<h2> 세션 유지시간(변경전) : <%= interval %>초</h2>
<h2> 세션 유지시간(변경후) : <%= interval2 %>초</h2>
<h2> 마지막 접근시간(ms) : <%= sdf.format(new Date(lastTime)) %>초</h2>
</body>
</html>
