<%@ page import="kr.ac.kopo.board.BoardVO" %><%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/07
  Time: 11:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BoardVO b = new BoardVO();

    b.setNo(1);
    b.setTitle("테스트");

    // pageContext영역에 객체 등록
    // 이름 : board   값 : 생성된 BoardVO 객체
    pageContext.setAttribute("board", b);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    no : <%= b.getNo() %><br>
    no : <%= ((BoardVO)pageContext.getAttribute("board")).getNo() %><br>
    no : ${ board.no }<br>
    title : <%= b.getTitle() %><br>
    title : <%= ((BoardVO)pageContext.getAttribute("board")).getTitle()%><br>
    title : ${ board.title }
</body>
</html>
