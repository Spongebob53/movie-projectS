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
	<title>영화이름</title>
	<link rel="shortcut icon" type="image/x-icon" href="/resources/img/logo-color.ico" />
    <link href="/resources/css/reset.css?ver=1" rel="stylesheet" type="text/css">
    <link href="/resources/css/text.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/logo.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/header.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/footer.css?ver=3" rel="stylesheet" type="text/css">
    <link href="/resources/css/movieDetail.css?ver=3" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>

	<header>
        <div class="header">
            <div class="header-search">
				<a href="#" ><i class="bi bi-search"></i></a>
			</div>
            <div class="header-logo">
				<a href="/"><img src="/resources/img/textLogo-color.png" class="logo-medium"></a>
			</div>
            <div class="header-member">
				<c:choose>
					<c:when test="${sessionScope.customer_id == null}">
						<a href="login" class=txt-xs>로그인</a>
		            	<a href="join" class="txt-xs">회원가입</a>
					</c:when>
					<c:when test="${sessionScope.customer_id != null}">
						<a href="#" class="txt-xs">${sessionScope.customer_id}님 반갑습니다</a>
						<a href="logout" class="txt-xs">로그아웃</a>
					</c:when>
				</c:choose>
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
				</ul></li>
			<li><a href="ticketing" class="txt-md">예매</a>
				<ul>
					<li><a href="#" class="txt-sm">빠른예매</a></li>
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
    
    <section>
    	<div class="movie-detail-banner">
    	
    	</div>
    </section>
    
    <main>
    	<div class="main">
    		<div class="detail-top">
    			<div class="movie-poster">
					<img src="/resources/img/movie1.jpeg">
				</div>
				<div class="movie-info">
					<div class="movie-info_title">
						<span class="title-kor tit-xl">극장판 주술회전 0</span>
						<span class="title-eng txt-md">Jujutsu Kaisen: Zero</span>
					</div>
					<ul class="movie-info_detail1">
						<li class="txt-md">관람객 평점 <strong class="tit-lg">5.0</strong></li>
						<li class="txt-md">예매율 <strong class="tit-lg">10%</strong></li>
					</ul>
					<ul class="movie-info_detail2">
						<li class="txt-sm">장르 <strong class="txt-sm">애니메이션/일본</strong></li>
						<li class="txt-sm">감독 <strong class="txt-sm">박성후</strong></li>
						<li class="txt-sm">출연 <strong class="txt-sm">오가타 메구미, 하나자와 카나, 코마츠 미카코, 우치야마 코우키, 세키 토모카즈, 나카무라 유이치, 사쿠라이 타카히로</strong></li>
					</ul>
					<button class="btn_movie-ticketing txt-sm">예매하기</button>
				</div>
			</div>
			<div class="detail-bottom">
				<button class="btn_tab txt-md" onclick="">영화정보</button>
				<button class="btn_tab txt-md">평점 및 관람평</button>
				<div class="movie-tab">
					<div class="movie-tab_info">
						<div class="info_titile">
							<strong class="tit-sm">시놉시스</strong>
						</div>
						<p class="info_text txt-sm">
							어릴 적 소꿉친구인 오리모토 리카를 교통사고로 눈앞에서 잃은 옷코츠 유타.<br> <br> “약속해, 리카와 유타는
							어른이 되면 결혼하기로” 옷코츠는 원령으로 변한 리카의 저주에 괴로워한 나머지, 자신도 죽기를 바라지만 최강의
							주술사인 고죠 사토루에 의해 주술고전에 들어가게 된다. 그리고 동급생인 젠인 마키, 이누마키 토게, 판다를 만나면서
							굳은 결심을 한다. <br> <br> “살아도 된다는 자신감이 필요해” “나는 주술고전에서 리카의 저주를 풀겠습니다” 한편, 옷코츠와
							친구들 앞에 과거에 일반인을 대량으로 학살해서 고전에서 추방된 최악의 주저사인 게토 스구루가 나타난다. “12월
							24일, 우리는 백귀야행을 결행한다” 주술사만의 낙원을 만들려는 게토는 비술사를 섬멸하겠다면서, 신주쿠와 교토에 천의
							저주를 내리는데…과연 옷코츠는 게토를 막을 수 있을까? 그리고 리카의 저주를 풀 수 있을까?
						</p>
					</div>
					<div class="movie-tab_info">
						<div class="info_titile">
							<strong class="tit-sm">트레일러</strong>
							<button class="add-more_btn txt-xs">더 보기</button>
						</div>
						<div class="info_trailer">
							<div class="trailer-card"></div>
							<div class="trailer-card"></div>
							<div class="trailer-card"></div>
						</div>
					</div>
					<div class="movie-tab_info">
						<div class="info_titile">
							<strong class="tit-sm">스틸컷</strong>
							<button class="add-more_btn txt-xs">더 보기</button>
						</div>
						<div class="info_still-cut">
							<div class="still-cut_view">
								<div class="view-card"></div>
							</div>
							<div class="still-cut_thumb">
								<div class="thumb-card"></div>
								<div class="thumb-card"></div>
								<div class="thumb-card"></div>
								<div class="thumb-card"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </main>
    
<%-- 	<c:choose> --%>
<%-- 		<c:when test="${sessionScope.customer_id == null}"> --%>
<!-- 			<a href="login">로그인</a> -->
<%-- 		</c:when> --%>
<%-- 		<c:when test="${sessionScope.customer_id != null}"> --%>
<%-- 			<div>${sessionScope.customer_id}님반갑습니다</div> --%>
<!-- 			<a href="logout">로그아웃</a> -->
<%-- 		</c:when> --%>
<%-- 	</c:choose> --%>
<%-- 	여기는 상세영화 페이지 ${movie.movie_title} ${movie.movie_time} --%>
<%-- 	${movie.movie_age} ${movie.movie_gerne} --%>
<!-- 	<a href="ticketing">예약 페이지</a> -->
<!-- 	<a href="/">메인 페이지</a> -->
	
    
    <footer>
    	<div class="footer">
    		<div class="footer-logo">
				<a href="/"><img src="/resources/img/textLogo-gray.png" class="logo-medium"></a>
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
	
</body>
</html>
