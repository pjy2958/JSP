<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    /*
        객체등록 : 공유영역.setAttribute("이름", 값);
        객체조회 : 공유영역.getAttribute("이름"
        JSP 공유영역 4가지 : pageContext, request, session, application
     */
    pageContext.setAttribute("msg", "pageContext영역에 등록완료");

    // "id"라는 이름으로 "홍길동" 값을 가진 객체 등록
    pageContext.setAttribute("id", "홍길동");
    request.setAttribute("msg", "request영역에 출력");
    pageContext.setAttribute("length", "request영역에 출력".length());
%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
    EL 공유영여4 4가지 : pageScope, requestScope, sessionScope, applicaionScope
--%>
empty msg : ${ empty msg }<br>
msg : <%= pageContext.getAttribute("msg") %><br>
el msg : ${ msg }<br>
el id : ${ id }<br>

request msg : ${ requestScope.msg }<br>
request msg length : <%= ((String) request.getAttribute("msg")).length()%><br>
request msg length : ${ length } <br>
</body>
</html>
