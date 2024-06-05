<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="/assets/css/main.css">
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function(){
            $("form").on("submit", function(event){
                event.preventDefault();

                $.ajax({
                    url: "/holiday/apply",
                    method: "POST",
                    data: $(this).serialize(),
                    success: function(response){
                        // Assuming response contains the new holiday data in JSON format
                        $("#holiday-table").append(
                            "<tr>" +
                            "<td>" + response.user_name + "</td>" +
                            "<td>" + response.user_id + "</td>" +
                            "<td>" + response.holiday_start + "</td>" +
                            "<td>" + response.holiday_end + "</td>" +
                            "<td>" + response.hdkind_name + "</td>" +
                            "</tr>"
                        );
                    },
                    error: function(error){
                        alert("Error: " + error.responseText);
                    }
                });
            });
        });

        $(document).ready(function(){
            $("#holiday_start").on("change", function() {
                $(this).css("color", "#111111");
            });
        });

        $(document).ready(function(){
            $("#holiday_end").on("change", function() {
                $(this).css("color", "#111111");
            });
        });

    </script>
    <style>
        /* 선택된 input 요소의 텍스트 색상을 검정색으로 설정 */
        input[type="date"]:focus {
            color: #111111;

        }
        #holiday-table{
            width: 100%;
        }
        #tableform{
            width:100%;
        }
    </style>
</head>
<body>
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
        <form id="tableform">
            <table style="width: 100%; align-content: center">
                <tr>
                    <td colspan="2" style="background-color: #f08080">
                        <select name="hdkind_no" style="color: white">
                            <c:forEach var="dto" items="${list}">
                                <option value="${dto.hdkind_no}">${dto.hdkind_name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td style="color: black">
                        휴가시작일
                    </td>
                    <td>
                        <label>
                            <input type="date" name="holiday_start" id="holiday_start" value="${formattedDate}" style="width: 500px;">
                        </label>
                    </td>
                </tr>
                <tr>
                    <td style="color: black">
                        휴가종료일
                    </td>
                    <td>
                        <label>
                            <input type="date" name="holiday_end" id="holiday_end" value="${formattedDate}"style="width: 500px;">
                        </label>
                    </td>
                </tr>
            </table>
            <button type="submit" style="width: 100px;">신청</button>
        </form>
        <br><br>
        <table id="holiday-table" style="background-color: #f08080">
            <tr>
                <td>이름</td>
                <td>아이디</td>
                <td>휴가시작일</td>
                <td>휴가종료일</td>
                <td>휴가종류</td>
            </tr>

                <c:forEach var="dto" items="${listu}">
            <tr>
                <td>${dto.user_name}</td>
                <td>${dto.user_id}</td>
                    <td >${dto.holiday_start}</td>
                    <td>${dto.holiday_end}</td>
                    <td>${dto.hdkind_name}</td>
            </tr>
                </c:forEach>

        </table>
</body>
</html>
