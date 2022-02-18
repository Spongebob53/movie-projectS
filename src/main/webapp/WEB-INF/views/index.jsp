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
    <title>JAVA CINEMA</title>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mobile/1.4.1/jquery.mobile.min.js"></script>
    <script type="text/javascript" src="/resources/js/index.js"></script>
    
    <link href="/resources/css/reset.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/text.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/button.css?ver=5" rel="stylesheet" type="text/css">
    <link href="/resources/css/logo.css?ver=5" rel="stylesheet" type="text/css">
    <link href="/resources/css/header.css?ver=5" rel="stylesheet" type="text/css">
    <link href="/resources/css/footer.css?ver=5" rel="stylesheet" type="text/css">
    <link href="/resources/css/main.css?ver=5" rel="stylesheet" type="text/css">
    
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/logo/logo-color.ico" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>

<body>

	<header class="header">
		<div class="head">
			<div class="header-search">
				<button class="btn_search">
					<i class="bi bi-search"></i>
				</button>
			</div>
			<div class="header-logo">
				<a href="introduce" data-transition="slideup"><img
					src="/resources/img/logo/textLogo-color.png" class="logo-medium"></a>
			</div>
			<div class="header-member">
				<c:choose>
					<c:when test="${sessionScope.customer_id == null}">
						<a href="login" class=txt-xs>로그인</a>
						<a href="join" class="txt-xs">회원가입</a>
					</c:when>
					<c:when test="${sessionScope.customer_id != null}">
						<a href="#" class="welcome-text txt-xs">${sessionScope.customer_id}님
							반갑습니다 :)</a>
						<a href="logout" class="txt-xs">로그아웃</a>
					</c:when>
				</c:choose>
				<a href="#" class="txt-xs">고객센터</a>
			</div>
		</div>
		<ul class="nav">
			<li><a href="#" class="txt-md">영화</a>
				<ul>
					<li><a href="#" class="txt-sm">현재상영작</a></li>
					<li><a href="#" class="txt-sm">상영예정작</a></li>
				</ul></li>
			<li><a href="ticketing" class="txt-md">예매</a>
				<ul>
					<li><a href="ticketing" class="txt-sm">빠른예매</a></li>
					<li><a href="#" class="txt-sm">상영시간표</a></li>
				</ul></li>
			<li><a href="#" class="txt-md">극장</a>
				<ul>
					<li><a href="#" class="txt-sm">전체극장</a></li>
					<li><a href="#" class="txt-sm">특별관</a></li>
				</ul></li>
			<li><a href="#" class="txt-md">이벤트</a>
				<ul>
					<li><a href="#" class="txt-sm">영화/예매</a></li>
					<li><a href="#" class="txt-sm">당첨자발표</a></li>
					<li><a href="#" class="txt-sm">종료 이벤트</a></li>
				</ul></li>
			<li><a href="#" class="txt-md">혜택</a>
				<ul>
					<li><a href="#" class="txt-sm">멤버십/CLUB</a></li>
					<li><a href="#" class="txt-sm">제휴할인</a></li>
				</ul></li>
		</ul>
	</header>

	<div class="fix-navigation">
		<div class="fix-navigation_in">
			<div class="fix-logo">
				<a href="introduce" data-transition="slideup"> <img
					src="/resources/img/logo/textLogo-white.png" class="logo-small"></a>
			</div>
			<ul class="fix-nav">
				<li><a href="#" class="txt-md">영화</a>
					<ul>
						<li><a href="#" class="txt-sm">현재상영작</a></li>
						<li><a href="#" class="txt-sm">상영예정작</a></li>
					</ul></li>
				<li><a href="ticketing" class="txt-md">예매</a>
					<ul>
						<li><a href="ticketing" class="txt-sm">빠른예매</a></li>
						<li><a href="#" class="txt-sm">상영시간표</a></li>
					</ul></li>
				<li><a href="#" class="txt-md">극장</a>
					<ul>
						<li><a href="#" class="txt-sm">전체극장</a></li>
						<li><a href="#" class="txt-sm">특별관</a></li>
					</ul></li>
				<li><a href="#" class="txt-md">이벤트</a>
					<ul>
						<li><a href="#" class="txt-sm">영화/예매</a></li>
						<li><a href="#" class="txt-sm">당첨자발표</a></li>
						<li><a href="#" class="txt-sm">종료 이벤트</a></li>
					</ul></li>
				<li><a href="#" class="txt-md">혜택</a>
					<ul>
						<li><a href="#" class="txt-sm">멤버십/CLUB</a></li>
						<li><a href="#" class="txt-sm">제휴할인</a></li>
					</ul></li>
			</ul>
		</div>
	</div>

	<section class="main-banner">
		<div class="main-banner_in">
			<div class="video-wrap">
				<video autoplay controls loop muted poster="" preload="auto">
					<source src="/resources/img/video/000008.mp4" type="video/mp4">
				</video>
				<div class="main-banner_content">
					<h1 class="main-banner_title tit-2xl">언차티드</h1>
					<p class="main-banner_text txt-xl">
						&lt;스파이더맨&gt; 톰 홀랜드 <br> 액션 어드벤처의 세대교체!
					</p>
					<div class="main-banner_btn">
						<button class="btn_movie-detail">상세정보</button>
						<button class="btn_movie-ticketing">예매하기</button>
					</div>
				</div>
			</div>
		</div>
	</section>

	<main class="movie-chart">
		<div class="movie-chart_in">
			<div class="movie-chart_titile">
				<h1 class="title tit-xl">영화 순위</h1>
				<button class="btn_add-more">더 보기</button>
			</div>
			<div class="movie-chart_content">
				<button class="btn_arrow prev"><i class="bi bi-chevron-left"></i></button>
				<div class="movie-chart_slide">
					<c:if test="${movieList!=null}">
						<c:forEach items="${movieList}" var="movie">
							<div class="movie-list-wrapper">
								<form method="get" class="movie-card">
									<input type="hidden" name="movie_id" value="${movie.movie_id}">
									<img src="/resources/img/moviePoster/${movie.movie_id}.jpeg">
									<div class="movie-chart_btn">
										<button type="submit" formaction="movieDetail" class="btn_movie-detail">상세정보</button>
										<button type="submit" formaction="ticketing" class="btn_movie-ticketing">예매하기</button>
									</div>
								</form>
								<div class="movie-info">
									<strong class="movie-info_title tit-lg">${movie.movie_title}</strong>
									<span class="movie-info_grade txt-sm">평점 5</span> <span
										class="movie-info_rate txt-sm">예매율 50%</span>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>
				<button class="btn_arrow next"><i class="bi bi-chevron-right"></i></button>
			</div>
		</div>
	</main>

	<div class="event-banner">
   		<div class="event-banner_in">
   			<div class="event-banner_content">
   				<strong class="title tit-xl">2022 자바멤버십 안내</strong>
   				<p class="event-banner-text txt-md">쉽고 빠른 LEVEL-UP! FRIENDS <br> 스페셜관, 선택형 쿠폰까지 혜택 UPGRADE!</p>
   				<p class="event-banner-date txt-sm">2022.02.14 ~ 2022. 02.20</p>
   				<button class="btn_event">이벤트 바로가기</button>
   			</div>
   		</div>
   	</div>

   	<div class="news">
   		<div class="news_in">
	   		<div class="news_title">
	    		<h1 class="title tit-xl">소식</h1>
	    		<button class="btn_add-more">더 보기</button>
	   		</div>
	   		<div class="news_content">
	   			<div class="news-content_box notice">
	   				<span class="title tit-sm">공지사항</span>
	   				<div class="notice-wrapper">
	   					<div class="notice_text txt-sm">[기타] 22년 VIP 선정 기준 변경 및 추가 기준 관련 안내</div>
	   					<div class="notice_text txt-sm">[극장] 22년 문화가 있는 날 가격 조정 안내</div>
	   					<div class="notice_text txt-sm">[행사/이벤트] [이터널스] 스피드 페이백 이벤트 오류 관련 공지</div>
	   				</div>
	   			</div>
	   			<div class="news-content_box center">
	   				<span class="title tit-sm">고객센터</span>
	   				<div class="center-wrapper">
		   				<span class="center_text txt-sm">031-239-5855</span>
		   				<span class="center_text txt-sm">운영시간 (평일 09:00 ~ 18:00)</span>
	   				</div>
	   			</div>
	   		</div>
   		</div>
   	</div>

	<footer class="footer">
    	<div class="footer_in">
    		<div class="footer-logo">
				<a href="/"><img src="/resources/img/logo/textLogo-gray.png" class="logo-medium"></a>
			</div>
    		<div class="footer-info">
				<div class="footer-info_top">
					<ul>
						<li><a href="#" class="txt-xs">기업정보</a></li>
						<li><a href="#" class="txt-xs">채용정보</a></li>
						<li><a href="#" class="txt-xs">광고/제휴문의</a></li>
						<li><a href="#" class="txt-xs">이메일무단수집거부</a></li>
						<li><a href="#" class="txt-xs">이용약관</a></li>
						<li><a href="#" class="txt-xs">개인정보처리방침</a></li>
						<li><a href="#" class="txt-xs">윤리경영</a></li>
						<li><a href="#" class="txt-xs">사이버감사실</a></li>
					</ul>
				</div>
				<div class="footer-info_bottom">
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

</body>
</html>
