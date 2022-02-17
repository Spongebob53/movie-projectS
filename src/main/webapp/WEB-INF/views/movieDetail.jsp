<%--
  Created by IntelliJ IDEA.
  User: spongebob53
  Date: 2022/01/31
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>${movie.movie_title}</title>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mobile/1.4.1/jquery.mobile.min.js"></script>
	<script type="text/javascript" src="/resources/js/movieDetail.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="/resources/img/logo/logo-color.ico" />
   
    <link href="/resources/css/reset.css?ver=3" rel="stylesheet" type="text/css">
    <link href="/resources/css/button.css?ver=6" rel="stylesheet" type="text/css">
    <link href="/resources/css/text.css?ver=3" rel="stylesheet" type="text/css">
    <link href="/resources/css/logo.css?ver=3" rel="stylesheet" type="text/css">
    <link href="/resources/css/header.css?ver=4" rel="stylesheet" type="text/css">
    <link href="/resources/css/footer.css?ver=3" rel="stylesheet" type="text/css">
    <link href="/resources/css/movieDetail.css?ver=6" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>

	<header class="header">
        <div class="head">
            <div class="header-search">
				<button class="btn_search"><i class="bi bi-search"></i></button>
			</div>
            <div class="header-logo">
				<a href="index" data-transition="slideup"><img src="/resources/img/logo/textLogo-color.png" class="logo-medium"></a>
			</div>
            <div class="header-member">
				<c:choose>
					<c:when test="${sessionScope.customer_id == null}">
						<a href="login" class=txt-xs>로그인</a>
		            	<a href="join" class="txt-xs">회원가입</a>
					</c:when>
					<c:when test="${sessionScope.customer_id != null}">
						<a href="#" class="welcome-text txt-xs">${sessionScope.customer_id}님 반갑습니다 :)</a>
						<a href="logout" class="txt-xs">로그아웃</a>
					</c:when>
				</c:choose>
            	<a href="#" class="txt-xs">고객센터</a>
            </div>
        </div>
    </header>

    <nav class="navigation">
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
	</nav>
    
    <section class="movie-detail_banner">
		<div class="banner-slide">
			<img src="/resources/img/trailer/trailer_01.jpeg"> 
			<img src="/resources/img/trailer/trailer_02.jpeg"> 
			<img src="/resources/img/trailer/trailer_03.jpeg"> 
			<img src="/resources/img/trailer/trailer_04.jpeg">
		</div>
	</section>
    
    <main class="movie-detail">
    	<div class="movie-detail_in">
    		<!-- 상단 영화 정보 -->
			<div class="detail-top">
    			<div class="movie-poster">
					<img src="/resources/img/moviePoster/${movie.movie_id}.jpeg">
				</div>
				<div class="movie-info">
					<div class="movie-info_title">
						<span class="tit-xl">${movie.movie_title}</span>
						<span class="txt-md">eng Title</span>
					</div>
					<ul class="movie-info_detail1">
						<li class="txt-md">관람객 평점 <strong class="tit-lg">8.6</strong></li>
						<li class="txt-md">예매율 <strong class="tit-lg">10%</strong></li>
					</ul>
					<ul class="movie-info_detail2">
						<li class="tit-xs">장르 <strong class="txt-sm">${movie.movie_gerne} / ${movie.movie_age}세, ${movie.movie_time}분</strong></li>
						<li class="tit-xs">감독 <strong class="txt-sm">${movie.movie_director}</strong></li>
						<li class="tit-xs">출연 <strong class="txt-sm">고혁준, 이현종, 성유나, 김연초</strong></li>
					</ul>
					<button class="btn_movie-ticketing" onclick="location.href='ticketing'">예매하기</button>
					<button class="btn_beta" onclick="location.href='movieBeta'">BETA</button>
				</div>
			</div>
			
			<!-- 하단 디테일 정보 -->
			<div class="detail-bottom">
				<button class="btn_tab info">영화정보</button>
				<button class="btn_tab grade">평점 및 관람평</button>
				<div class="movie-tab">
					<!-- 시놉시스 시작 -->
					<div class="movie-tab_info">
						<div class="info_titile">
							<strong class="tit-sm">시놉시스</strong>
						</div>
						<p class="synopsis-text txt-sm">
							<b>“가자, 보물 찾으러!”</b> <br />
							<br /> 자칭 고려 제일검인 의적단 두목 ‘무치’(강하늘)와 바다를 평정한 해적선의 주인 ‘해랑’(한효주). <br />한
							배에서 운명을 함께하게 된 이들이지만 산과 바다, 태생부터 상극으로 사사건건 부딪히며 바람 잘 날 없는 항해를
							이어간다. <br />
							<br />그러던 어느 날, 왜구선을 소탕하던 이들은 흔적도 없이 사라진 왕실의 보물이 어딘가 숨겨져 있다는 사실을
							알게 되고 <br /> 해적 인생에 다시없을 최대 규모의 보물을 찾아 위험천만한 모험에 나서기 시작한다. <br />
							<br />하지만 사라진 보물을 노리는 건 이들뿐만이 아니었으니!<br />원하는 것을 얻기 위해 수단과 방법을
							가리지 않는 역적 ‘부흥수’(권상우) 또한 보물을 차지하기 위해 바다에 뛰어드는데...!<br />
							<br /> 해적과 의적, 그리고 역적 사라진 보물! 찾는 자가 주인이다!
						</p>
					</div>
					<!-- 시놉시스 끝 -->

					<!-- 트레일러 시작 -->
					<div class="movie-tab_info">
						<div class="info_titile">
							<strong class="tit-sm">트레일러</strong>
							<button class="btn_add-more">더 보기</button>
						</div>
						<div class="trailer-slide">
							<button class="btn_arrow trailer-prev">
								<i class="bi bi-chevron-left"></i>
							</button>
							<div class="trailer-slide_box">
								<c:forEach var="cnt" begin="1" end="5">
									<div class="trailer-list-box">
										<input type="hidden" name="movie_id" value="${movie.movie_id}">
										<div class="trailer-card">
											<img
												src="/resources/img/trailer/${movie.movie_id}/${movie.movie_id}_${cnt}.jpeg">
											<div class="trailer_btn">
												<button class="btn_play">
													<i class="bi bi-play-fill"></i>
												</button>
											</div>
										</div>
										<div class="trailer-info">
											<span class="txt-sm">티저 예고편</span>
										</div>
									</div>
								</c:forEach>
							</div>
							<button class="btn_arrow trailer-next">
								<i class="bi bi-chevron-right"></i>
							</button>
						</div>
					</div>
					<!-- 트레일러 끝 -->

					<!-- 스틸컷 시작 -->
					<div class="movie-tab_info">
						<div class="info_titile">
							<strong class="tit-sm">스틸컷</strong>
							<button class="btn_add-more">더 보기</button>
						</div>
						<div class="still-cut-slide">
							<div class="still-cut_view-slide_box">
								<div class="view-list-box">
									<div class="view-card">
										<img src="/resources/img/trailer/trailer_01.jpeg">
									</div>
									<div class="view-card">
										<img src="/resources/img/trailer/trailer_02.jpeg">
									</div>
									<div class="view-card">
										<img src="/resources/img/trailer/trailer_03.jpeg">
									</div>
									<div class="view-card">
										<img src="/resources/img/trailer/trailer_04.jpeg">
									</div>
								</div>
							</div>
							<div class="still-cut_btn">
								<button class="btn_arrow still-cut-prev">
									<i class="bi bi-chevron-up"></i>
								</button>
								<button class="btn_arrow still-cut-next">
									<i class="bi bi-chevron-down"></i>
								</button>
							</div>
							<div class="still-cut_thumb-slide_box">
								<div class="thumb-list-box">
									<c:forEach var="cnt" begin="1" end="8">
										<div class="thumb-card">
											<img
												src="/resources/img/still-cut/${movie.movie_id}/${movie.movie_id}_${cnt}.jpeg">
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<!-- 스틸컷 끝 -->
					
				</div>
			</div>
    	</div>
    </main>
    
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
