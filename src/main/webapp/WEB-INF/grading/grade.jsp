<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="/assets/css/main.css">
<body class="is-preload">

<!-- Header -->
<header id="header">
    <a class="logo" href="/index/index">그것 Academy</a>
    <nav>
        <ul>
            <li><a href="#">휴가 신청</a>
                <ul class="dropdown">
                    <li><a href="/holiday/homain?user_id=${sessionScope.loginid}">휴가 신청</a> </li>
                    <li><a href="#">잔여휴가 확인</a></li>
                </ul>
            </li>
            <li><a href="#">시험</a>
                <ul class="dropdown">
                    <li><a href="/test/main?user_id=${sessionScope.loginid}">시험 보기</a></li>
                    <li><a href="/test/check?user_id=${sessionScope.loginid}">시험 점수 확인</a></li>
                    <c:if test="${user_category != 0}">
                        <li><a href="/grading/grade">시험 채점</a></li>
                    </c:if>
                </ul>
            </li>
            <li><a href="/tutor/info">강사 소개</a></li>
            <li><a href="/location/map">찾아오는 길</a></li>
            <li>
                <nav>
                    <a href="#menu" style="margin-left: 10px;">Menu</a>
                </nav>
            </li>
        </ul>
    </nav>
</header>
<!-- Nav -->
<nav id="menu">
    <ul class="links">
        <li><a href="/Calendar/check?user_id=${sessionScope.loginid}">출결 관리</a></li>
        <li><a href="#">일정 관리</a></li>
        <li><a href="/user/incentive?user_id=${sessionScope.loginid}">훈련장려금</a></li>
        <li><a href="#">회원정보 수정</a></li>
    </ul>
</nav>
<section class="wrapper">
    <div class="inner">
        <header class="special">
            <c:set var="lastLectureName" value="" />

            <c:forEach var="dto" items="${list}">
                <c:if test="${lastLectureName != dto.lecture_name}">
                    <h2>${dto.lecture_name} 과목 채점</h2>
                    <c:set var="lastLectureName" value="${dto.lecture_name}" />
                </c:if>
            </c:forEach>
        </header>
        <div class="highlights">
<c:forEach var="dto" items="${list}">
            <section>
                <div class="content">
                    <header>
                        <h3><a href="/grading/score?user_no=${dto.user_no}&tutorcate_no=${tutorcate_no}">[${dto.user_name}]님의 시험 정보</a></h3>
                            <hr>
                    </header>
                    <p>Answer: <br>${dto.test_content}</p>
                </div>
            </section>
</c:forEach>
    </div>
    </div>
</section>
</body>
</html>
