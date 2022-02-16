<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="/resources/css/header.css?ver=3" rel="stylesheet" type="text/css">
    <link href="/resources/css/footer.css?ver=4" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/ticketing.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet">
</head>
<body>
<header>
    <div class="header">
        <div class="header-search">
            <a href="#"><i class="bi bi-search"></i></a>
        </div>
        <div class="header-logo">
            <a href="/"><img src="/resources/img/logo/textLogo-color.png" class="logo-medium"></a>
        </div>
        <div class="header-member">
            <a href="#" class="txt-xs">${sessionScope.customer_id}님 반갑습니다</a>
            <a href="logout" class="txt-xs">로그아웃</a>
            <a href="#" class="txt-xs">고객센터</a>
        </div>
    </div>
</header>
<nav>
    <ul class="nav">
        <li><a href="#" class="txt-md">영화</a>
            <ul>
                <li><a href="#" class="txt-sm">현재상영작</a></li>
                <li><a href="#" class="txt-sm">상영예정작</a></li>
            </ul>
        </li>
        <li><a href="ticketing2" class="txt-md">예매</a>
            <ul>
                <li><a href="#" class="txt-sm">빠른예매</a></li>
                <li><a href="#" class="txt-sm">상영시간표</a></li>
            </ul>
        </li>
        <li><a href="#" class="txt-md">극장</a>
            <ul>
                <li><a href="#" class="txt-sm">전체극장</a></li>
                <li><a href="#" class="txt-sm">특별관</a></li>
            </ul>
        </li>
        <li><a href="#" class="txt-md">이벤트</a>
            <ul>
                <li><a href="#" class="txt-sm">영화/예매</a></li>
                <li><a href="#" class="txt-sm">당첨자발표</a></li>
                <li><a href="#" class="txt-sm">종료 이벤트</a></li>
            </ul>
        </li>
        <li><a href="#" class="txt-md">혜택</a>
            <ul>
                <li><a href="#" class="txt-sm">멤버십/CLUB</a></li>
                <li><a href="#" class="txt-sm">제휴할인</a></li>
            </ul>
        </li>
    </ul>
</nav>

	<main>

		<%-- <c:choose> --%>
		<%--     <c:when test="${sessionScope.customer_id == null}"> --%>
		<!--         <a href="login">로그인</a> -->
		<%--     </c:when> --%>
		<%--     <c:when test="${sessionScope.customer_id != null}"> --%>
		<%--         <div>${sessionScope.customer_id}님 반갑습니다</div> --%>
		<!--         <a href="logout">로그아웃</a> -->
		<%--     </c:when> --%>
		<%-- </c:choose> --%>
		<!-- 여기는 예매 페이지 -->

		<!-- 지역 목록 -->
		<ul>
			<c:forEach items="${area}" var="area">
				<li>
					<input type="hidden" value="${ area.area_name }">
					<button class="area" value="${area.area_id}"">${ area.area_name }</button>
				</li>
			</c:forEach>
		</ul>
		<!-- 극장 목록 -->
		<ul class="theaterList">
			<%-- 	<c:forEach items="${theater}" var="theater"> --%>
			<!-- 		<li> -->
			<%-- 			<button class="theater" value="${theater.theater_id }">${ theater.theater_name }</button> --%>
			<!-- 		</li> -->
			<%-- 	</c:forEach> --%>
		</ul>


		<!-- 영화 목록 -->
		<ul>
			<c:forEach items="${movie_title}" var="movie_title">
				<li>
					<button class="movie_title" value="${movie_title.movie_id }">${ movie_title.movie_title }</button>
				</li>
			</c:forEach>
		</ul>

		<form class="book-process" action="#" method="get">
			<div class="book-process_theater">선택한 극장</div>
			<div>></div>
			<div class="book-process_movie">선택한 영화</div>
			<div>></div>
			<input type="hidden" value="상영id">
			<div class="book-process_time">선택한 시간</div>
			<div>></div>
			<button class="book-process_submit">좌석 선택</button>
		</form>


	</main>
	<footer>
    <div class="footer">
        <div class="footer-logo">
            <a href="/"><img src="/resources/img/logo/textLogo-gray.png" class="logo-medium"></a>
        </div>
        <div class="footer-info">
            <div class="footer-info_list">
                <ul>
                    <li><a href="#" class="txt-xs">기업정보</a></li>
                    <li><a href="#" class="txt-xs">채용정보</a></li>
                    <li><a href="#" class="txt-xs">광고/제휴문의</a></li>
                    <li><a href="#" class="txt-xs">이메일무단수집거부</a></li>
                    <li><a href="#" class="txt-xs">이용약관</a></li>
                    <li><a href="#" class="txt-xs">개인정보처리방침</a></li>
                    <li><a href="#" class="txt-xs">윤리경영</a></li>
                </ul>
            </div>
            <div class="footer-info_content">
                <address class="txt-xs">(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</address>
                <ul>
                    <li class="txt-xs">대표이사 : 신승용</li>
                    <li class="txt-xs">사업자등록번호 : 000-00-00000</li>
                    <li class="txt-xs">통신판매업신고번호 : 2022-휴먼교육센터-0203</li>
                </ul>
                <p class="footer-inner_copyright txt-xs">© CJ CGV. All Rights Reserved</p>
            </div>
        </div>
    </div>
</footer>
<script type="text/javascript" src="/resources/js/ticketing.js"></script>
</body>
</html>