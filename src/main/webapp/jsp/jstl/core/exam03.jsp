<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/07
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
    http://localhost:9999/jsp/jstl/core/exam04.jsp?type=S or
    http://localhost:9999/jsp/jstl/core/exam04.jsp?type=U
--%>
<c:if test="${empty param.type}">
    <h2>type 파라미터가 전송되지 않았습니다.</h2>
</c:if>
<c:if test="${param.type=='S'}">
    <h2>반갑습니다 관리자님</h2>
</c:if>
<c:if test="${ param.type eq 'u'}">
    <h2>반갑습니다 일반사용자님</h2>
</c:if>
</body>
</html>
