<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	List<String> testList = new ArrayList<>();
	testList.add("hi");testList.add("hi");testList.add("hi");testList.add("hi");testList.add("hi");

	String[] names = {"홍길동", "강길동", "윤길동", "박길동"};

	pageContext.setAttribute("names", names);
	pageContext.setAttribute("nameLength", names.length);
    pageContext.setAttribute("testList", testList);
%>

<html>
<head>
	<title>Title</title>
</head>
<body>
이름배열의 개수 : ${fn:length(names)}<br>
리스트배열의 개수 : ${fn:length(testList)}

<br>

<c:forEach items="${ names }" var="name" varStatus="loop">
	${name}
	<c:if test="${!loop.last}">
		,
	</c:if>
</c:forEach>

<br>

<c:forEach items="${ names }" var="name" varStatus="loop">
	${ loop.first } : ${ loop.last } :${ loop.index } : ${ loop.count }<br>
</c:forEach>

<br>

<c:set var="cnt" value="1"/>
<c:forEach items="${names}" var="name">
	<c:if test="${cnt ne 1}">
		,
	</c:if>
	${ name }
	<c:set var="cnt" value="${cnt += 1}"/>
</c:forEach>
<c:remove var="cnt" scope="page"/>

<br>

<c:forEach var="i" begin="0" end="${nameLength - 1}">
	${names[i]}
	<c:if test="${i != (nameLength - 1)}">
		,
	</c:if>
</c:forEach>

<h2>1 ~ 10사이의 정수 출력</h2>
<c:forEach var="i" begin="1" end="10">
	${ i }
</c:forEach>
<br>
년도선택 :
<select>
	<c:forEach var="year" begin="1970" end="2022" step="5">
		<option>${ year }</option>
	</c:forEach>
</select>

</body>
</html>
