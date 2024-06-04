<%--
  Created by IntelliJ IDEA.
  User: lee00
  Date: 2024-06-03
  Time: 오후 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<meta charset="utf-8">
<meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="keywords" content="">
<link rel="stylesheet" href="/assets/css/main.css">
<html>
<head>
    <title>시험 제출 결과</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
</head>
<body>
<h1>시험 제출 되었습니다.</h1>
<button type="button" onclick="location.href='../index/index'">돌아가기</button>
<h1>시험 결과</h1>
<p>Form ID: ${formId}</p>
<h3>답변 1:</h3>
<p>${answer1}</p>
<h3>답변 2:</h3>
<p>${answer2}</p>
</body>
</html>