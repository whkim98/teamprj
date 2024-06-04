<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/assets/css/main.css">
<body>
<header id="header">
    <a class="logo" href="/index/index">학원학원</a>
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
                </ul>
            </li>
            <li><a href="#">강사 소개</a></li>
            <li><a href="/location/map">찾아오는 길</a></li>
            <li>
                <nav>
                    <a href="#menu" style="margin-left: 10px;">Menu</a>
                </nav>
            </li>
        </ul>
    </nav>
</header>
<br>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.360285733334!2d127.02645057496139!3d37.49941982797535!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca194d4bb162f%3A0x9612cf895f23eaca!2z67mE7Yq47Lqg7ZSEIOqwleuCqOuzuOybkA!5e0!3m2!1sko!2skr!4v1717465582247!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
<table class="table table-striped" style="width: 700px;">
    <tr>
        <th>주소</th>
    </tr>
    <tr>
        <td>서울특별시 강남구 819 3 삼오빌딩 5-8층</td>
    </tr>
    <tr>
        <th>대표번호</th>
    </tr>
    <tr>
        <td>02)1001-1001</td>
    </tr>
    <tr>
        <th>지하철</th>
    </tr>
    <tr>
        <td>신논현역 9호선 5번출구 > 강남역 방향 도보 12분<br>강남역 2호선 11번출구 - 신논현역 방향 도보 4분</td>
    </tr>
    <tr>
        <th>버스</th>
    </tr>
    <tr>
        <td>하차) 강남역 12번 출구</td>
    </tr>
</table>
</body>
</html>
