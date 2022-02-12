<%--
  Created by IntelliJ IDEA.
  User: spongebob53
  Date: 2022/01/31
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose>
    <c:when test="${sessionScope.customer_id == null}">
        <a href="login">로그인</a>
    </c:when>
    <c:when test="${sessionScope.customer_id != null}">
        <div>${sessionScope.customer_id}님 반갑습니다</div>
        <a href="logout">로그아웃</a>
    </c:when>
</c:choose>
여기는 상세영화 페이지
${movie.movie_title}
${movie.movie_time}
${movie.movie_age}
${movie.movie_gerne}
<a href="ticketing.jsp">예약 페이지</a>
<a href="index.jsp">메인 페이지</a>
</body>
</html>
