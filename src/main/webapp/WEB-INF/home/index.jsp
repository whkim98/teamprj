<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>학생관리ㅋ</title>
    <meta charset="utf-8">
    <meta name="robots"
          content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link rel="stylesheet" href="/assets/css/main.css">
</head>
<body class="is-preload">

<!-- Header -->
<form action="">
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
                        <c:if test="${user_category != 0}">
                            <li><a href="">시험 채점</a></li>
                        </c:if>
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
</form>
<!-- Nav -->
<nav id="menu">
    <ul class="links">
        <li><a href="/Calendar/check?user_id=${sessionScope.loginid}">출결 관리</a></li>
        <li><a href="#">일정 관리</a></li>
        <li><a href="/user/incentive?user_id=${sessionScope.loginid}">훈련장려금</a></li>
        <li><a href="#">회원정보 수정</a></li>
    </ul>
</nav>
<!-- Banner -->
<section id="banner">
    <div class="inner">
        <h1>학원학원</h1>
        <p>
            우하핰ㅋㅋ <a href="https://templated.co/">TEMPLATED</a> 호호호
        </p>
    </div>
    <div class="login-box">
        <h3>[${sessionScope.loginid}]님</h3>
        <h5>안녕하세요.</h5>
        <form>
            <div class="textbox">
                듣고 있는 과목 이름
            </div>
            <c:if test="${check != 1}">
            <input type="button" onclick="location.href='/attendance/in?user_id=${sessionScope.loginid}'" class="btn" value="입실">
            </c:if>
            <c:if test="${check == 1}">
            <input type="button" onclick="location.href='/attendance/out?user_id=${sessionScope.loginid}'" class="btn" value="퇴실">
            </c:if>
        </form>
    </div>
    <video autoplay loop muted playsinline src="/images/banner.mp4"></video>
</section>

<!-- Highlights -->
<section class="wrapper">
    <div class="inner">
        <header class="special">
            <h2>Sem turpis amet semper</h2>
            <p>In arcu accumsan arcu adipiscing accumsan orci ac. Felis id
                enim aliquet. Accumsan ac integer lobortis commodo ornare aliquet
                accumsan erat tempus amet porttitor.</p>
        </header>
        <div class="highlights">
            <section>
                <div class="content">
                    <header>
                        <a href="#" class="icon fa-vcard-o"><span class="label">Icon</span></a>
                        <h3>Feugiat consequat</h3>
                    </header>
                    <p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
                        adipiscing gravida odio porttitor sem non mi integer non
                        faucibus.</p>
                </div>
            </section>
            <section>
                <div class="content">
                    <header>
                        <a href="#" class="icon fa-files-o"><span class="label">Icon</span></a>
                        <h3>Ante sem integer</h3>
                    </header>
                    <p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
                        adipiscing gravida odio porttitor sem non mi integer non
                        faucibus.</p>
                </div>
            </section>
            <section>
                <div class="content">
                    <header>
                        <a href="#" class="icon fa-floppy-o"><span class="label">Icon</span></a>
                        <h3>Ipsum consequat</h3>
                    </header>
                    <p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
                        adipiscing gravida odio porttitor sem non mi integer non
                        faucibus.</p>
                </div>
            </section>
            <section>
                <div class="content">
                    <header>
                        <a href="#" class="icon fa-line-chart"><span class="label">Icon</span></a>
                        <h3>Interdum gravida</h3>
                    </header>
                    <p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
                        adipiscing gravida odio porttitor sem non mi integer non
                        faucibus.</p>
                </div>
            </section>
            <section>
                <div class="content">
                    <header>
                        <a href="#" class="icon fa-paper-plane-o"><span class="label">Icon</span></a>
                        <h3>Faucibus consequat</h3>
                    </header>
                    <p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
                        adipiscing gravida odio porttitor sem non mi integer non
                        faucibus.</p>
                </div>
            </section>
            <section>
                <div class="content">
                    <header>
                        <a href="#" class="icon fa-qrcode"><span class="label">Icon</span></a>
                        <h3>Accumsan viverra</h3>
                    </header>
                    <p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
                        adipiscing gravida odio porttitor sem non mi integer non
                        faucibus.</p>
                </div>
            </section>
        </div>
    </div>
</section>
<!-- CTA -->
<section id="cta" class="wrapper">
    <div class="inner">
        <h2>Curabitur ullamcorper ultricies</h2>
        <p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing
            gravida odio porttitor sem non mi integer non faucibus ornare mi ut
            ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien
            lorem accumsan varius montes viverra nibh in adipiscing. Lorem ipsum
            dolor vestibulum ante ipsum primis in faucibus vestibulum. Blandit
            adipiscing eu felis iaculis volutpat ac adipiscing sed feugiat eu
            faucibus. Integer ac sed amet praesent. Nunc lacinia ante nunc ac
            gravida.</p>
    </div>
</section>
<!-- Testimonials -->
<section class="wrapper">
    <div class="inner">
        <header class="special">
            <h2>Faucibus consequat lorem</h2>
            <p>In arcu accumsan arcu adipiscing accumsan orci ac. Felis id
                enim aliquet. Accumsan ac integer lobortis commodo ornare aliquet
                accumsan erat tempus amet porttitor.</p>
        </header>
        <div class="testimonials">
            <section>
                <div class="content">
                    <blockquote>
                        <p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
                            adipiscing gravida odio porttitor sem non mi integer non
                            faucibus.</p>
                    </blockquote>
                    <div class="author">
                        <div class="image">
                            <img height="256" width="256" src="/images/pic01.jpg" alt="">
                        </div>
                        <p class="credit">
                            - <strong>Jane Doe</strong> <span>CEO - ABC Inc.</span>
                        </p>
                    </div>
                </div>
            </section>
            <section>
                <div class="content">
                    <blockquote>
                        <p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
                            adipiscing gravida odio porttitor sem non mi integer non
                            faucibus.</p>
                    </blockquote>
                    <div class="author">
                        <div class="image">
                            <img height="256" width="256" src="images/pic03.jpg" alt="">
                        </div>
                        <p class="credit">
                            - <strong>John Doe</strong> <span>CEO - ABC Inc.</span>
                        </p>
                    </div>
                </div>
            </section>
            <section>
                <div class="content">
                    <blockquote>
                        <p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
                            adipiscing gravida odio porttitor sem non mi integer non
                            faucibus.</p>
                    </blockquote>
                    <div class="author">
                        <div class="image">
                            <img height="256" width="256" src="/images/pic02.jpg" alt="">
                        </div>
                        <p class="credit">
                            - <strong>Janet Smith</strong> <span>CEO - ABC Inc.</span>
                        </p>
                    </div>
                </div>
            </section>
        </div>
    </div>
</section>
<!-- Footer -->
<footer id="footer">
    <div class="inner">
        <div class="content">
            <section>
                <h3>Accumsan montes viverra</h3>
                <p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing
                    gravida odio porttitor sem non mi integer non faucibus ornare mi
                    ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien
                    lorem accumsan varius montes viverra nibh in adipiscing. Lorem
                    ipsum dolor vestibulum ante ipsum primis in faucibus vestibulum.
                    Blandit adipiscing eu felis iaculis volutpat ac adipiscing sed
                    feugiat eu faucibus. Integer ac sed amet praesent. Nunc lacinia
                    ante nunc ac gravida.</p>
            </section>
            <section>
                <h4>Sem turpis amet semper</h4>
                <ul class="alt">
                    <li><a href="#">Dolor pulvinar sed etiam.</a></li>
                    <li><a href="#">Etiam vel lorem sed amet.</a></li>
                    <li><a href="#">Felis enim feugiat viverra.</a></li>
                    <li><a href="#">Dolor pulvinar magna etiam.</a></li>
                </ul>
            </section>
            <section>
                <h4>Magna sed ipsum</h4>
                <ul class="plain">
                    <li><a href="#"><i class="icon fa-twitter">&nbsp;</i>Twitter</a></li>
                    <li><a href="#"><i class="icon fa-facebook">&nbsp;</i>Facebook</a></li>
                    <li><a href="#"><i class="icon fa-instagram">&nbsp;</i>Instagram</a></li>
                    <li><a href="#"><i class="icon fa-github">&nbsp;</i>Github</a></li>
                </ul>
            </section>
        </div>
    </div>
</footer>
<div id="copyright " class="copyright">
    Design by <a href="https://templated.co/">TEMPLATED</a>.
</div>

<!-- Scripts -->
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/browser.min.js"></script>
<script src="/assets/js/breakpoints.min.js"></script>
<script src="/assets/js/util.js"></script>
<script src="/assets/js/main.js"></script>
</body>
</html>