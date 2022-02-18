<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/logo/logo-color.ico"/>
    <link href="/resources/css/reset.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/button.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/text.css?ver=3" rel="stylesheet" type="text/css">
    <link href="/resources/css/logo.css?ver=3" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/ticketing.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>

<main>

    <!-- 지역 목록 -->
    <ul>
        <c:forEach items="${area}" var="area">
            <li>
                    <%-- 					<input type="hidden" value="${ area.area_name }"> --%>
                <button class="area" value="${area.area_id}">${ area.area_name }</button>
            </li>
        </c:forEach>
    </ul>
    <!-- 극장 목록 -->
    <ul class="theaterList">

    </ul>

    <!-- 영화 목록 -->
    <ul>
        <c:forEach items="${movie_title}" var="movie_title">
            <li>
                <input type="hidden" value="${ movie_title.movie_title }">
                <button class="movie_title" value="${movie_title.movie_id }">${ movie_title.movie_title }</button>
            </li>
        </c:forEach>
    </ul>

    <!-- 날짜 -->

    <!-- 영화 시간 목록 -->
    <div class="time-container_theater">
        <div class="time-container_theater-movie"></div>
        <!--                 <div class="theater-schedule"> -->
        <!--                     <div class="theater-schedule_time">00:00</div> -->
        <!--                     <div class="theater-schedule_theater">100/100 2관</div> -->
        <!--                 </div> -->
    </div>

    <form class="book-process" action="seat" method="get">
        <div class="book-process_theater">선택한 극장</div>
        <div>></div>
        <div class="book-process_movie">선택한 영화</div>
        <div>></div>
        <div class="book-process_time">선택한 시간</div>
        <div>></div>
        <button class="book-process_submit">좌석 선택</button>
    </form>


</main>
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="/resources/js/ticketing.js"></script>
</body>
</html>