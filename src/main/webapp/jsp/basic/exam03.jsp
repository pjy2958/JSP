<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/02
  Time: 3:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Random" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>1 ~ 10사이의 임의의 수 출력</h1>
<%
    Random r = new Random();
    int random = r.nextInt(10) + 1;
%>
추출된 정수 : <%= random%>hello<br>
</body>
</html>