<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/07
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String[] nameArr = {"홍길동", "강길동", "윤길동"};
    pageContext.setAttribute("names", nameArr);

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    첫번째 이름 : <%= nameArr[0] %><br>
    두번째 이름 : <%= nameArr[1] %><br>
    세번째 이름 : <%= nameArr[2] %><br>
    <hr>
    첫번째 이름 : ${ names[0] }<br>
    두번째 이름 : ${ names[1] }<br>
    세번째 이름 : ${ names[2] }<br>
</body>
</html>
