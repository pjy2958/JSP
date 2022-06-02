<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/02
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>1 ~ 10사이의 정수 출력</h1>
<%
    for(int i = 0; i <= 10; i++){
        out.println(i + 1 + "<br>");
    }
%>
</body>
</html>
