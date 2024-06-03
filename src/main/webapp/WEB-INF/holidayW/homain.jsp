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
    <a class="logo" href="index.html">학원학원</a>

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
${dto.user_name}
</body>
</html>
