<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/13
  Time: 1:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<%
	request.setAttribute("phone", "010-1111-2222");
%>
phone : ${phone}
<h2>before include</h2>
<h3>파라미터 설정전</h3>
<c:import url="one.jsp"/>
<h2>after include</h2>
<br>
<h2>before include</h2>
<h3>파라미터 설정</h3>
<c:import url="one.jsp">
	<c:param name="name" value="hong"/>
</c:import>
phone : ${phone}
<h2>after include</h2>
</body>
</html>
