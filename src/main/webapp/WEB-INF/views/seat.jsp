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
    <link href="/resources/css/header.css?ver=5" rel="stylesheet" type="text/css">
    <link href="/resources/css/footer.css?ver=4" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/seat.css?ver=2" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet">
</head>
<body>
<header class="header">
    <div class="head">
        <div class="header-search">
            <a href="#" ><i class="bi bi-search"></i></a>
        </div>
        <div class="header-logo">
            <a href="introduce" data-transition="slideup"><img src="/resources/img/logo/textLogo-color.png" class="logo-medium"></a>
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
<script type="text/javascript" src="/resources/js/seat.js"></script>
</body>
</html>