<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="/assets/css/main.css">
<html>
<head>
    <title>Title</title>
</head>
<body>
<header id="header">
    <a class="logo" href="/index/index">학원학원</a>

    <nav>
        <ul>
            <li><a href="#">휴가 신청</a>
                <ul class="dropdown">
                    <li><a href="/holiday/homain">휴가 신청</a> </li>
                    <li><a href="#">잔여휴가 확인</a></li>
                </ul>
            </li>
            <li><a href="#">시험</a>
                <ul class="dropdown">
                    <li><a href="#">시험 보기</a></li>
                    <li><a href="#">시험 점수 확인</a></li>
                </ul>
            </li>
            <li><a href="#">강사 소개</a></li>
            <li><a href="#">강의 후기</a></li>
            <li>
                <nav>
                    <a href="#menu" style="margin-left: 10px;">Menu</a>
                </nav>
            </li>
        </ul>
    </nav>
</header>
<nav id="menu">
    <ul class="links">
        <li><a href="#">출결 관리</a></li>
        <li><a href="#">일정 관리</a></li>
        <li><a href="#">훈련장려금</a></li>
        <li><a href="#">회원정보 수정</a></li>
    </ul>
</nav>
<section id="banner">
    <div class="inner">
        <h1>${dto.user_name}님 휴가 정보</h1>
        <h2 style="color: #111111">잔여휴가: <fmt:formatNumber value="${dto.user_holiday}" type="number" maxFractionDigits="0"/>일 남았습니다.</h2>
        <button type="button" onclick="location.href='/holiday/submit?user_no=${dto.user_no}'">휴가신청</button>
    </div>
    <video autoplay loop muted playsinline src="/images/banner.mp4"></video>
</section>
</body>
</html>
