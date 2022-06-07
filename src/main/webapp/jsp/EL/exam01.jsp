<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/07
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL연산자 공부</title>
</head>
<body>
    5 + 5 : <%=5 + 5 %><br>
    5 + 5 : ${5 + 5}<br>
    9 % 5 : ${9 % 5}<br>
    9 mod 5 : ${9 mod 5}<br>
    9 > 5 : ${9 > 5}<br>
    9 gt 5 : ${9 gt 5}<br>
    9 == 5 : ${9 == 5}<br>
    9 eq 5 : ${9 eq 5}<br>

    (5 == 5 ) && ( 7 > 5 ) : ${ (5 == 5) && (7 > 5) }<br>
    (5 eq 5 ) and ( 7 gt 5 ) : ${ (5 eq 5) and (7 gt 5) }<br>

    empty str : ${ empty str }<br>
    not empty str : ${ not empty str }<br>

    5의 짝/홀 판단 : ${ 5 mod 2 eq 0 ? '짝수' : '홀수' }<br>
    10의 짝/홀 판단 : ${ 10 % 2 == 0 ? '짝수' : '홀수' }<br>
</body>
</html>
