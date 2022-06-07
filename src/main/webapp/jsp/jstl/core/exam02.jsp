<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/07
  Time: 3:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    value 속성만 지정 : <c:out value="Hello JSTL"/><br>
    e1 msg : ${ msg }<br>
    msg : <c:out value="${ msg }" default="msg변수 찾을 수 없음" /><br>
    <c:set var="msg" value="hello...<hr>"/>
    <c:out value="${ msg }"/><br>
    escapeXml = false 설정<br>
    <c:out value="${ msg }" escapeXml="false" /><br>
    ${ msg }<br>
</body>
</html>
