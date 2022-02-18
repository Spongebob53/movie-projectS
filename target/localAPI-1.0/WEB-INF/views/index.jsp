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
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    <link href="/resources/css/reset.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/text.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/button.css?ver=5" rel="stylesheet" type="text/css">
    <link href="/resources/css/logo.css?ver=5" rel="stylesheet" type="text/css">
    <link href="/resources/css/main.css?ver=5" rel="stylesheet" type="text/css">
    
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/logo/logo-color.ico" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
</head>

<body>
	<jsp:include page="header.jsp"/>

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

	<jsp:include page="footer.jsp"/>

	<script type="text/javascript" src="/resources/js/index.js"></script>
</body>
</html>
