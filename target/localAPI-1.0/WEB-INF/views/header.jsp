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
    <link href="/resources/css/header.css?ver=5" rel="stylesheet" type="text/css">

    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/logo/logo-color.ico"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
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
            <a href="/" data-transition="slideup"><img
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
            </ul>
        </li>
        <li><a href="ticketing" class="txt-md">예매</a>
            <ul>
                <li><a href="ticketing" class="txt-sm">빠른예매</a></li>
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
                </ul>
            </li>
            <li><a href="ticketing" class="txt-md">예매</a>
                <ul>
                    <li><a href="ticketing" class="txt-sm">빠른예매</a></li>
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
    </div>
</div>

<script type="text/javascript" src="/resources/js/index.js"></script>
</body>
</html>
