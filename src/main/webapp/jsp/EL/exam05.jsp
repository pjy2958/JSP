<%@ page import="kr.ac.kopo.board.BoardVO" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/07
  Time: 11:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Map<String, String> b = new HashMap<>();
    b.put("no", "1");
    b.put("title", "테스트");
    pageContext.setAttribute("board", b);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    no : <%= b.get("no")%><br>
    title : <%= b.get("title")%><br>
    no : <%= ((Map<String, String>)pageContext.getAttribute("board")).get("no")%><br>
    title : <%= ((Map<String, String>)pageContext.getAttribute("board")).get("title")%><br>
    no : ${ board.no }<br>
    title : ${ board.title }<br>
    aaa : ${ board.aaa }<br>
</body>
</html>
