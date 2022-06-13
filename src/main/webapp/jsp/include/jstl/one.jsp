<%--
  Created by IntelliJ IDEA.
  User: jyp
  Date: 2022/06/13
  Time: 2:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<hr>
request공유영역 phone : ${phone}<br>
넘어온 파라미터정보
name : ${ param.name }<br>
<h2>include content</h2>
<h2>include content</h2>
<h2>include content</h2>
<hr>
<c:set scope="request" var="phone" value="010-0000-0000"/>
