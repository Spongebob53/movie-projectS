<%--
  Created by IntelliJ IDEA.
  User: spongebob53
  Date: 2022/01/31
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% int room_seat = Integer.parseInt(request.getParameter("room_seat")); %>
<% String movie_show_id = request.getParameter("movie_show_id"); %>
<html>
<head>
    <title>좌석</title>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/logo/logo-color.ico"/>
    <link href="/resources/css/reset.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/button.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/text.css?ver=3" rel="stylesheet" type="text/css">
    <link href="/resources/css/logo.css?ver=3" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/seat.css?ver=2" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>
<main>
    <section class="container">
        <header class="container-head">좌석 선택</header>
        <article class="seats">
            <div class="seats-box">
            	<% String[] row = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"}; %>
            	<% int rowCnt = 0; %>
            	<% int col = 1; %>
            	<c:forEach begin="1" end="<%=room_seat %>" step="1">
            		<c:set var="col" value="<%=col %>" />
            		<c:if test="${col == 6}">
            			<div class="seats-seat"></div>
            			<div class="seats-seat"></div>
            		</c:if>
            		<div class="seats-seat"><%=row[rowCnt]+col %></div>
            		<c:if test="${col == 10}">
            			<% col = 0; %>
            			<% rowCnt++; %>
            		</c:if>
            		<% col++; %>

            	</c:forEach>
            </div>
        </article>
        <aside class="seats-info">
            <div class="seats-info_disabled">예매완료</div>
            <div class="seats-info_pick">선택</div>
        </aside>
        <form class="seat-submit" action="/">
<!--             <button class="seat-submit_btn" type="submit">뒤로가기</button> -->
<%--             <input type="hidden" value="<%=movie_show_id%>"> --%>
            <button class="seat-submit_btn" value="<%=movie_show_id%>" type="submit">예매하기</button>
            <input type="hidden" value="${sessionScope.customer_id}">
        </form>
    </section>
</main>
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="/resources/js/seat.js"></script>
</body>
</html>