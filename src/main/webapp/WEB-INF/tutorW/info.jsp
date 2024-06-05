<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="/assets/css/main.css">
<body class="is-preload">

<header id="header">
    <a class="logo" href="/index/index">그것 Academy</a>
    <nav>
        <ul>
            <li><a href="#">휴가 신청</a>
                <ul class="dropdown">
                    <li><a href="/holiday/homain?user_id=${sessionScope.loginid}">휴가 신청</a> </li>
                </ul>
            </li>
            <li><a href="#">시험</a>
                <ul class="dropdown">
                    <li><a href="/test/main?user_id=${sessionScope.loginid}">시험 보기</a></li>
                    <li><a href="/test/check?user_id=${sessionScope.loginid}">시험 점수 확인</a></li>
                    <c:if test="${user_category != 0}">
                        <li><a href="/grading/grade?user_id=${sessionScope.loginid}">시험 채점</a></li>
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
        <li><a href="#">회원정보 수정</a></li>
    </ul>
</nav>



<section class="wrapper">
    <div class="inner">
        <header class="special">
            <h2>강사 소개</h2>
            <p>그것 Academy의 강사진은요</p>
        </header>

<div class="testimonials">
<c:forEach var="dto" items="${list}">
            <section>
                <div class="content">
                    <blockquote>
                        <p>강사명: ${dto.user_name}<br>
                        강의과목: ${dto.lecture_name}<br>
                        이메일: ${dto.user_email}</p>
                    </blockquote>
                    <div class="author">
                        <div class="image">
                            <img height="200" width="200" style="max-width: none;" src="${dto.user_photo}" alt="">
                        </div>
<%--                        <p class="credit">--%>
<%--                            - <strong>Jane Doe</strong> <span>CEO - ABC Inc.</span>--%>
<%--                        </p>--%>
                    </div>
                </div>
            </section>

</c:forEach>
<%--            <section>--%>
<%--                <div class="content">--%>
<%--                    <blockquote>--%>
<%--                        <p>ㄷㄷㄷㄷ</p>--%>
<%--                    </blockquote>--%>
<%--                    <div class="author">--%>
<%--                        <div class="image">--%>
<%--                            <img height="256" width="256" style="max-width: none;" src="/images/냠냠우주.jpeg" alt="">--%>
<%--                        </div>--%>
<%--                        <p class="credit">--%>
<%--                            - <strong>John Doe</strong> <span>CEO - ABC Inc.</span>--%>
<%--                        </p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </section>--%>
<%--            <section>--%>
<%--                <div class="content">--%>
<%--                    <blockquote>--%>
<%--                        <p>귀엽 ㅋ</p>--%>
<%--                    </blockquote>--%>
<%--                    <div class="author">--%>
<%--                        <div class="image">--%>
<%--                            <img height="256" width="256" style="max-width: none;" src="/images/space.jpg" alt="">--%>
<%--                        </div>--%>
<%--                        <p class="credit">--%>
<%--                            - <strong>Janet Smith</strong> <span>CEO - ABC Inc.</span>--%>
<%--                        </p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </section>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
</body>
</html>
