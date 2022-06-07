<%@ page import="kr.ac.kopo.board.BoardVO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/07
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BoardVO board = new BoardVO();
    board.setTitle("성공");
    List<BoardVO> boardVOList = new ArrayList<>();
    boardVOList.add(board);
    pageContext.setAttribute("boardList1", boardVOList);

    BoardVO[] boardArr = new BoardVO[]{board};
    pageContext.setAttribute("boardList2", boardArr);

    List<Map<String, String>> boardList = new ArrayList<>();
    Map<String, String> boardMap = new HashMap<>();
    boardMap.put("title", "성공");
    boardList.add(boardMap);
    pageContext.setAttribute("boardList3", boardList);

    Map[] boardArr2 = new Map[]{boardMap};
    pageContext.setAttribute("boardList4", boardArr2);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
  성공/실패? ${ boardList1[0].title }<br>
  성공/실패? ${ boardList2[0].title }<br>
  성공/실패? ${ boardList3[0].title }<br>
  성공/실패? ${ boardList4[0].title }<br>
</body>
</html>