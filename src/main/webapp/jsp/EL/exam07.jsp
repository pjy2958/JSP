<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/07
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<String> nameList = new ArrayList<>();
    nameList.add("홍길동");
    nameList.add("강길동");
    nameList.add("윤길동");
    pageContext.setAttribute("names", nameList);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    첫번째 이름 : <%= nameList.get(0)%><br>
    첫번째 이름 : ${ names[0] }<br>
    두번째 이름 : <%= nameList.get(1)%><br>
    두번째 이름 : ${ names[1] }<br>
    세번째 이름 : <%= nameList.get(2)%><br>
    세번째 이름 : ${ names[2] }<br>
</body>
</html>