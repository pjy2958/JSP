<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/07
  Time: 10:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
    http://localhost:9999/jsp/el/exam02.jsp?id=aaa&name=bbb 요청시
--%>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String[] hobby = request.getParameterValues("hobby");
    if (hobby == null) {
        hobby = new String[]{"파라미터 없음"};
    }
%>
id : <%= id %><br>
id : <%= request.getParameter("id") %><br>
el id : ${ param.id }<br>

name : <%= name %><br>
name : <%= request.getParameter("name") %><br>
el name : ${ param.name }<br>
<%--
    http://localhost:9999/jsp/el/exam02.jsp?id=aaa&name=bbb&hobby=music&hobby=movie&hobby=reading 요청시
    music을 뽑을 경우
--%>
el hobby[0] : ${ paramValues.hobby[0] }<br>
</body>
</html>