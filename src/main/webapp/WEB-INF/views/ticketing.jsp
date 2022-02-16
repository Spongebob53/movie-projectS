<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
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
여기는 예매 페이지

<!-- 지역 목록 -->
<ul>
	<c:forEach items="${area}" var="area">
		<li>
		<button class="area" value="${area.area_id}">${ area.area_name }</button>
		</li>
	</c:forEach>
</ul>
<!-- 상영관 목록 -->
<ul>
	<c:forEach items="${theater }" var="theater">
		<li>
		<input type="hidden" name="theater_id" value="${theater.theater_id }">
		<button class="theater">${ theater.theater_name }</button>
		</li>
	
	</c:forEach>

</ul>



<script type="text/javascript" src="/resources/js/ticketing.js"></script>
</body>
</html>