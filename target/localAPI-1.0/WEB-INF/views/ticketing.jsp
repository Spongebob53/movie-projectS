<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>예매</title>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/logo/logo-color.ico"/>
    <link href="/resources/css/reset.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/button.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/text.css?ver=3" rel="stylesheet" type="text/css">
    <link href="/resources/css/logo.css?ver=3" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/ticketing.css?ver=8" type="text/css">
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
        <header class="header-theater">극장</header>
        <header class="header-movie">영화</header>
        <header class="header-time">시간</header>
        <article class="theater-container">
            <div class="theater-container_ops">
                <div class="theater-container_op1">전체</div>
                <div class="theater-container_op2">스페셜관</div>
            </div>
            <div class="theater">
                <ul class="theater-areas">
                    <c:forEach items="${area}" var="area">
                        <input type="hidden" value="${ area.area_name }">
                        <li class="theater-areas_item" value="${area.area_id}">${ area.area_name }</li>
                    </c:forEach>
                </ul>

                <ul class="theater-theaters">

                </ul>
                <div class="special" style="visibility: hidden">준비중입니다</div>
            </div>
        </article>
        <article class="movie-container">
            <div class="movie-container_ops">
                <div class="movie-container_op1">예매</div>
            </div>
            <ul class="movies">
                <c:forEach items="${movie_title}" var="movie_title">
                    <input type="hidden" value="${ movie_title.movie_title }">
                    <li class="movies-item" value="${movie_title.movie_id }">${ movie_title.movie_title }</li>
                </c:forEach>
            </ul>
        </article>
        <article class="time-container">
            <ul class="days">
                <li class="days-day">
                    <div class="days-day_num">2/4</div>
                    <div class="days-day_str">금</div>
                </li>
            </ul>
            <div class="time-container_theater">
                <div class="time-container_theater-movie"></div>

            </div>
        </article>
        <form class="book-process" action="seat" method="post">
            <div class="book-process_theater">선택한 극장</div>
            <div>></div>
            <div class="book-process_movie">선택한 영화</div>
            <div>></div>
            <div class="book-process_time">선택한 시간</div>
            <div>></div>
            <button class="book-process_submit" value="${sessionScope.customer_id}">좌석 선택</button>
        </form>
    </section>
</main>
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="/resources/js/ticketing.js"></script>
</body>
</html>