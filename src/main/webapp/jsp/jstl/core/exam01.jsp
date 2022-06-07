<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/07
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    1값을 가지는 변수 cnt 선언(page 공유영역)<br>
    <c:set var="cnt" value="1"/>
    공유 영역에 설정된 cnt변수 : ${cnt}<br>

    <%-- cnt에 1 증가 --%>
    <c:set var="cnt" value="${cnt + 1}" scope="request"/>
    cnt에 1증가한 값 : ${cnt}<br>
    request cnt : ${ requestScope.cnt }<br>

    cnt변수 삭제<br>
    <c:remove var="cnt" scope="page"/>
    cnt : ${ pageScope.cnt }<br>
    request cnt : ${ requestScope.cnt }<br>

</body>
</html>
<%--    각각의 명칭
            JSP                 EL                  JSTL
        -----------------------------------------------------
        pageContext         pageScope               page
          request          requestScope            request
          session          sessionScope            session
        application      applicationScope        application
--%>