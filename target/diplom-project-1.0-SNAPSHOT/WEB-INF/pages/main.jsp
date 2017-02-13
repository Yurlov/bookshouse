<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="ru">
    <head>
        <!-- META -->
        <meta charset="UTF-8">
        <meta name="author" content="Viktor Yurlov" />
        <meta name="description" content="Online Library">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

        <!-- SITE TITLE -->
        <title>Book's House</title>

        <!-- FAVICON -->
        <link rel="icon" href="/resources/images/favicon.png">
		<link rel="icon" href="/resources/images/favicon.png" sizes="57x57">
		<link rel="icon" href="/resources/images/favicon.png" sizes="72x72">
		<link rel="icon" href="/resources/images/favicon.png" sizes="114x114">
		<link rel="icon" href="/resources/images/favicon.png" sizes="144x144">
        <%--<script>--%>
            <%--window.onload = function () {--%>
                <%--location += "#search"}--%>
        <%--</script>--%>

        <!-- STYLE -->
        <link rel="stylesheet" href="/resources/css/style.css">

        <!--[if lt IE 9]>
            <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
            <script>window.html5 || document.write('<script src="/resources/js/vendor/html5shiv.js"><\/script>')</script>
        <![endif]-->
    </head>
    <body >

        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!-- PRELOADER-->
        <div id="preloader">
           	<svg
            	 width="1000" height="1000" viewBox="0 0 1000 1000"
            	 xmlns="http://www.w3.org/2000/svg" version="1.1"
            	 xmlns:xlink="http://www.w3.org/1999/xlink">
            	<g transform="translate(500,500)">
            		<rect class="rotate-45 rotate-back" x=-5 y=-5 width=10 height=10 stroke="white" stroke-width=20 fill="none"/>
            		<rect class="rotate-45 rotate" x=-50 y=-50 width=100 height=100 stroke="white" stroke-width=20 stroke-linejoin="bevel" fill="none"/>
            		<g transform="translate(-50,0) rotate(-45)"><polyline class="pre-left" points="40,-40 50,-50 -40,-50 -50,-40 -50,50 -40,40" stroke="white" stroke-width=20 fill="none"/></g>
            		<g transform="translate(50,0) rotate(135)"><polyline class="pre-right" points="40,-40 50,-50 -40,-50 -50,-40 -50,50 -40,40" stroke="white" stroke-width=20 fill="none"/></g>
            	</g>
            </svg>
        </div>
        <!-- END PRELOADER -->
        <div class="wrapper">
            <!-- START SLIDER SECTION -->
            <section class="slider-section" id="home" >
                <div class="container-fluid">
                    <div class="row">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img class="img-responsive" src="/resources/images/my/11.jpg" width="1280" height="853" alt="">
                                    <div class="carousel-caption">
                                        <h1>WELCOME <span>TO</span> THE <span>BOOK'S HOUSE</span> </h1>
                                        <h2>WE WERE <span>WAITING</span> YOU</h2>

                                        <a href="#search">FIND BOOK</a>
                                        <a href="#search" class="go-to-about animated infinite bounce"></a>
                                    </div>
                                </div><!-- slider item 1 -->
                                <div class="item">
                                    <img class="img-responsive" src="/resources/images/my/6.jpg" width="1280" height="853" alt="">
                                    <div class="carousel-caption">
                                        <h1>WELCOME <span>TO</span> THE <span>BOOK'S HOUSE</span> </h1>
                                        <h2>WE WERE <span>WAITING</span> YOU</h2>

                                        <a href="#search">FIND BOOK</a>
                                        <a href="#search" class="go-to-about animated infinite bounce"></a>
                                    </div>
                                </div><!-- slider item 2 -->
                                <div class="item">
                                    <img class="img-responsive" src="/resources/images/my/7.jpg" width="1280" height="853" alt="">
                                    <div class="carousel-caption">
                                        <h1>WELCOME <span>TO</span> THE <span>BOOK'S HOUSE</span> </h1>
                                        <h2>WE WERE <span>WAITING</span> YOU</h2>

                                        <a href="#search">FIND BOOK</a>
                                        <a href="#search" class="go-to-about animated infinite bounce"></a>
                                    </div>
                                </div><!-- slider item 3 -->

                            </div>
                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                <span class="glyphicon " aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                <span class="glyphicon " aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div><!-- end of /.carousel -->
                    </div><!-- end of /.row -->
                </div><!-- end of /.container-fluid -->

                <!-- START HEADER SECTION -->
                <header class="header-section">
                    <nav class="navbar navbar-default">
                        <div class="container">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                </button><!-- end of sticky button -->
                                <a class="navbar-brand" href="/main">BOOK'<span>S</span> HOUSE</a><!-- end of /. logo title -->
                            </div>

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right">
                                    <security:authorize access="!isAuthenticated()"> <li><a href="/login">LOGIN</a> </li></security:authorize>
                                    <security:authorize access="hasRole('ADMIN')"><li><c:out value="${user}"/></li></security:authorize>
                                    <security:authorize access="!isAuthenticated()"> <li><a href="/register">SIGN UP</a> </li></security:authorize>
                            </ul>
                                <ul class="nav navbar-nav navbar-right" id="top-menu">

                                    <li class="active"><a href="#home">HOME</a></li>
                                    <li ><a href="#search">Books</a></li>
                                    <li ><a href="#service">SERVICE</a></li>
                                    <li ><a href="#portfolio">PORTFOLIO</a></li>
                                    <li ><a href="#feature">FEATURES</a></li>
                                    <li ><a href="#top-books">TOP</a></li>
                                    <li ><a href="#contact">CONTACT</a></li>
                                </ul>

                            </div><!--end of /.navbar-collapse -->
                        </div><!--end of /.container-fluid -->
                    </nav><!-- end of /. navbar -->
                </header><!-- end of /. header section -->
            </section>


            <!-- START ABOUT SECTION -->
            <section class="about-section" id="search" >
                <jsp:include page="search.jsp"/>
                <div class="container">
                    <div class="row">

                        <div class="col-xs-2 col-sm-1 col-md-1">
                            <c:forEach items="${genres}" var="g">
                               <h4> <a href="/searchByGenre/<c:out value="${g.name}"/>/pages/1" ><c:out value="${g.name}"/></a></h4>
                                </c:forEach>
                        </div>


                        <div class="qoute-caption" style="margin-left: 180px;">
                            <div id="quote" class="owl-carousel owl-theme">
                                <div class="item quote-item">
                                    <c:forEach items="${books.content}" var="b">
                                        <div class="col-lg-2 col-md-3 col-sm-5 col-xs-6" style="margin: 10px 10px 10px 10px" >
                                                <img width="150" height="200" src="/image/${b.id}" alt="${b.name}"/>
                                                <h3> <h2><c:out value="${b.name}"/></h2></h3>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            </div>
                        </div>

                    <c:url var="firstUrl" value="/pages/1" />
                    <c:url var="lastUrl" value="/pages/${books.totalPages}" />
                    <c:url var="prevUrl" value="/pages/${currentIndex - 1}" />
                    <c:url var="nextUrl" value="/pages/${currentIndex + 1}" />

                    <div class="pagination" >
                        <ul class="pagination pagination-lg" style="margin-left: 460px">
                            <c:choose>
                                <c:when test="${currentIndex == 1}">
                                    <li class="disabled"><a href="#">&lt;&lt;</a></li>
                                    <li class="disabled"><a href="#">&lt;</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li><a href="${firstUrl}">&lt;&lt;</a></li>
                                    <li><a href="${prevUrl}">&lt;</a></li>
                                </c:otherwise>
                            </c:choose>
                            <c:forEach var="i" begin="${beginIndex}" end="${endIndex}">
                                <c:url var="pageUrl" value="/pages/${i}" />
                                <c:choose>
                                    <c:when test="${i == currentIndex}">
                                        <li class="active"><a href="${pageUrl}"><c:out value="${i}" /></a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li><a href="${pageUrl}"><c:out value="${i}" /></a></li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            <c:choose>
                                <c:when test="${currentIndex == books.totalPages}">
                                    <li class="disabled"><a href="#">&gt;</a></li>
                                    <li class="disabled"><a href="#">&gt;&gt;</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li><a href="${nextUrl}">&gt;</a></li>
                                    <li><a href="${lastUrl}">&gt;&gt;</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                    </div>
            </section>

            <!-- START MEET SECTION -->
            <section class="meet-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 ceo-profile-pic">
                            <a href="#">
                                <img class="img-responsive" src="/resources/images/ceo.png" width="410" height="516" alt="">
                            </a><!-- profile pic -->
                        </div><!-- end of /.column 4 -->
                        <div class="col-lg-8">
                            <div class="section-title meet-title">
                                <h1>MeetOurC<span>E</span>O</h1><!-- section title -->
                            </div>
                            <div class="cso-driescription">
                                <p>Simply dummy text of the printing and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus</p>
                                <a href="#">GET IN TOUCH</a>
                            </div>
                        </div><!-- end of /. column 8 -->
                    </div><!-- end of /.row -->
                </div><!-- end of /.container -->
            </section><!-- end of /.meet section -->

            <!-- START SERVICE SECTION -->
            <section class="service-section" id="service" >
                <div class="container">
                    <div class="row">
                        <div  class="col-lg-8">
                            <div class="section-title service-title">
                                <h1>Our Servic<span >e</span>s</h1><!-- section title -->
                                <p>Simply dummy text of <span>the printing</span> and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod <span>maxime placeat facere</span> possimus cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus</p><!-- section caption -->
                            </div><!-- end of section title -->
                        </div><!-- end of /.column -->
                    </div><!-- end of /.row -->

                    <div class="row">
                        <div class="col-lg-4 col-lg-offset section-sub-title">
                            <!--<h1>OUR EXPERTISE</h1>--><!-- section sub title -->
                        </div><!-- end of /.column  -->
                    </div><!-- end of /.row -->

                    <div class="row">
                        <div class="col-md-4 col-sm-6">
                            <div class="service-item wow fadeInDown animated" data-wow-delay="0.1s">
                                <a href="#" class="icon"><i class="fa fa-desktop"></i></a>
                                <h2>UI/UX DESIGN</h2><!-- service item titile -->
                                <p>Simply dummy text of the printing and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio.</p><!-- service caption -->
                            </div><!-- end of service item 1 -->
                        </div><!-- end of service column 4 -->

                        <div class="col-md-4 col-sm-6">
                            <div class="service-item wow fadeInDown animated" data-wow-delay="0.2s">
                                <a href="#" class="icon"><i class="fa fa-code"></i> </a>
                                <h2>WEB DEVELOPMENT</h2><!-- service item titile -->
                                <p>Simply dummy text of the printing and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio.</p><!-- service caption -->
                            </div><!-- end of service item 1 -->
                        </div><!-- end of service column 4 -->

                        <div class="col-md-4 col-sm-6">
                            <div class="service-item wow fadeInDown animated" data-wow-delay="0.3s">
                                <a href="#" class="icon"><i class="fa fa-mobile"></i></a>
                                <h2>MOBILE APPS</h2><!-- service item titile -->
                                <p>Simply dummy text of the printing and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio.</p><!-- service caption -->
                            </div><!-- end of service item 1 -->
                        </div><!-- end of service column 4 -->

                        <div class="col-md-4 col-sm-6">
                            <div class="service-item wow fadeInDown animated" data-wow-delay="0.4s">
                                <a href="#" class="icon"><i class="fa fa-bolt"></i> </a>
                                <h2>BRANDING</h2><!-- service item titile -->
                                <p>Simply dummy text of the printing and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio.</p><!-- service caption -->
                            </div><!-- end of service item 1 -->
                        </div><!-- end of service column 4 -->

                        <div class="col-md-4 col-sm-6">
                            <div class="service-item wow fadeInDown animated" data-wow-delay="0.5s">
                                <a href="#" class="icon"><i class="fa fa-camera"></i></a>
                                <h2>PHOTOGRAPHY</h2><!-- service item titile -->
                                <p>Simply dummy text of the printing and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio.</p><!-- service caption -->
                            </div><!-- end of service item 1 -->
                        </div><!-- end of service column 4 -->

                        <div class="col-md-4 col-sm-6">
                            <div class="service-item wow fadeInDown animated" data-wow-delay="0.6s">
                                <a href="#" class="icon"><i class="fa fa-sticky-note-o"></i></a>
                                <h2>CONTENT WRITING</h2><!-- service item titile -->
                                <p>Simply dummy text of the printing and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio.</p><!-- service caption -->
                            </div><!-- end of service item 1 -->
                        </div><!-- end of service column 4 -->
                    </div>
                </div><!-- end of /.container -->
            </section><!-- end of /.service section -->

            <!-- START QOUTE SECTION -->
            <section class="quote-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5 quote-title">
                            <i class="fa fa-quote-left"></i>
                            <h1>Quo<span>t</span>e</h1>
                            <i class="fa fa-quote-right"></i>
                        </div><!-- end of column & quote title -->

                        <div class="col-md-6 qoute-caption">
                            <div  class="owl-carousel owl-theme">
                                <div class="item quote-item">
                                    <p>Work hard. And have patience. Because no matter who you are, you're going to get hurt in your career and you have to be patient to get through the injuries.</p>
                                </div>
                            </div>
                            <div class="customNavigation quote-navigation alignright">
                                <a class="btn quote-prev"><i class="fa fa-angle-left"></i></a>
                                <a class="btn quote-next"><i class="fa fa-angle-right"></i></a>
                            </div><!-- end of /.quote navigation -->
                        </div><!-- end of column -->
                    </div><!-- end of /. row -->
                </div><!-- end of /.container -->
            </section><!-- end of /.quote section -->

            <!-- START PORTFOLIO SECTION -->
            <section class="work-section" id="portfolio">
                <div class="container">
                    <div class="row">
                        <div class="section-title work-title">
                            <h1>Our Wo<span>r</span>x.!</h1>
                            <div class="col-lg-9 col-lg-offset-2 section-caption">
                                <p>Simply dummy text of <span>the printing</span> and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod <span>maxime placeat facere</span> possimus cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime</p><!-- section caption -->
                            </div><!-- end of section caption -->
                        </div><!-- end of section title -->
                    </div><!-- end of /.row -->
                    <div class="row">
                        <ul class="button-group sort-button-group">
                            <li class="button active" data-category="all">ALL WORX</li>
                            <li class="button" data-category="drawing">HAND DRAWING</li>
                            <li class="button" data-category="branding">BRANDING</li>
                            <li class="button" data-category="website">WEBSITES</li>
                            <li class="button" data-category="advertising">ADVERTISING</li>
                            <li class="button" data-category="social">SOCIAL</li>
                            <li class="button" data-category="product">PRODUCT</li>
                        </ul><!-- end of /.button group -->
                    </div><!-- end of /.row -->
                    <div class="work row gallery">
                        <div class="work-item drawing col-md-3">
                            <a href="#">
                                <img src="/resources/images/work/1.jpg" width="238" height="" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio</p>
                                        <p>
                                            <a href="/resources/images/work/1.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 1 -->
                        <div class="work-item branding col-md-3">
                            <a href="#">
                                <img src="/resources/images/work/2.jpg" width="237" height="237" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio</p>
                                        <p>
                                            <a href="/resources/images/work/2.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 2 -->
                        <div class="work-item website col-md-3">
                            <a href="#">
                                <img src="/resources/images/work/3.jpg" width="236" height="237" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio </p>
                                        <p>
                                            <a href="/resources/images/work/3.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 3 -->
                        <div class="work-item advertising col-md-3">
                            <a href="#">
                                <img src="/resources/images/work/4.jpg" width="237" height="237" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio </p>
                                        <p>
                                            <a href="/resources/images/work/4.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 4 -->
                        <div class="work-item social col-md-3">
                            <a href="#">
                                <img src="/resources/images/work/5.jpg" width="238" height="480" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio</p>
                                        <p>
                                            <a href="/resources/images/work/5.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 5 -->
                        <div class="work-item  product col-md-3">
                            <a href="#">
                                <img src="/resources/images/work/6.jpg" width="237" height="480" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio  </p>
                                        <p>
                                            <a href="/resources/images/work/6.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 6 -->
                        <div class="work-item drawing col-md-3">
                            <a href="#">
                                <img src="/resources/images/work/7.jpg" width="237" height="237" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio </p>
                                        <p>
                                            <a href="/resources/images/work/7.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 7 -->
                        <div class="work-item product website col-md-3">
                            <a href="#">
                                <img src="/resources/images/work/8.jpg" width="237" height="237" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio </p>
                                        <p>
                                            <a href="/resources/images/work/8.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 8 -->
                        <div class="work-item drawing branding col-md-3">
                            <a href="#">
                                <img src="/resources/images/work/9.jpg" width="237" height="237" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio </p>
                                        <p>
                                            <a href="/resources/images/work/9.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 9 -->
                        <div class="work-item branding website col-md-3">
                            <a href="#">
                                <img src="/resources/images/work/10.jpg" width="237" height="237" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio </p>
                                        <p>
                                            <a href="/resources/images/work/10.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 10 -->
                        <div class="work-item branding website col-md-3">
                            <a href="#">
                                 <img src="/resources/images/work/11.jpg" width="237" height="237" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio </p>
                                        <p>
                                            <a href="/resources/images/work/11.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 11 -->
                        <div class="work-item branding website col-md-3">
                            <a href="#">
                                <img src="/resources/images/work/12.jpg" width="237" height="237" alt="">
                            </a>
                            <div class="work-content">
                                <div class="work-caption">
                                    <div class="work-caption-details">
                                        <h2>RE BRA ND ING</h2>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio </p>
                                        <p>
                                            <a href="/resources/images/work/12.jpg" data-gal="prettyPhoto[gallery2]"><i class="fa fa-search"></i></a>
                                            <a href="#"><i class="fa fa-link"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end of /. work item 12 -->
                    </div><!-- end of work/row  -->

                </div><!-- end of /.container -->
            </section><!-- end of /.work section -->

            <!-- START CLIENT SECTION -->
            <section class="client-section" id="feature">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10 section-title">   
                            <h1>Clie<span>n</span>t</h1>
                            <p>Simply dummy text of the printing and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus</p>
                        </div>

                        <div id="client" class="owl-carousel owl-theme col-lg-11 col-lg-offset-1">
                            <div class="item client-item">
                                <a href="#">
                                    <img src="/resources/images/client/1.png" width="140" height="46" alt=""><!-- client logo -->
                                </a>
                            </div><!-- end of /.client item 1 -->
                            <div class="item client-item">
                                <a href="#">
                                    <img src="/resources/images/client/2.png" width="140" height="46" alt=""><!-- client logo -->
                                </a>
                            </div><!-- end of /.client item 2 -->
                            <div class="item client-item">
                                <a href="#">
                                    <img src="/resources/images/client/3.png" width="140" height="46" alt=""><!-- client logo -->
                                </a>
                            </div><!-- end of /.client item 3 -->
                            <div class="item client-item">
                                <a href="#">
                                    <img src="/resources/images/client/4.png" width="140" height="46" alt=""><!-- client logo -->
                                </a>
                            </div><!-- end of /.client item 4 -->
                            <div class="item client-item">
                                <a href="#">
                                    <img src="/resources/images/client/5.png" width="140" height="46" alt=""><!-- client logo -->
                                </a>
                            </div><!-- end of /.client item 5 -->
                            <div class="item client-item">
                                <a href="#">
                                    <img src="/resources/images/client/1.png" width="140" height="46" alt=""><!-- client logo -->
                                </a>
                            </div><!-- end of /.client item 6 -->
                            <div class="item client-item">
                                <a href="#">
                                    <img src="/resources/images/client/2.png" width="140" height="46" alt=""><!-- client logo -->
                                </a>
                            </div><!-- end of /.client item 7 -->
                            <div class="item client-item">
                                <a href="#">
                                    <img src="/resources/images/client/3.png" width="140" height="46" alt=""><!-- client logo -->
                                </a>
                            </div><!-- end of /.client item 8 -->
                        </div><!-- end of /.clientiten box  -->
                        <div class="customNavigation client-navigation">
                            <a class="btn client-prev"><i class="fa fa-angle-left"></i></a>
                            <a class="btn client-next"><i class="fa fa-angle-right"></i></a>
                        </div><!-- end of /.client navigation -->

                    </div><!-- end of /.row -->
                </div><!-- end of /. container -->
            </section><!-- end of /.client section -->

            <!-- START TESTIMONIAL SECTION -->
            <section class="testimonial-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-lg-offset-1">
                            <div id="testimonial" class="testimanial-area">
                                <div class="item">
                                    <img src="/resources/images/testimonial/1.jpg" width="427" height="427" alt="">
                                    <div class="testimonial-details">
                                        <h3>LINDA WONG</h3><!--  title -->
                                        <p>CEO OF STAR INDUSTRY</p><!-- description -->
                                    </div><!--end of /.testimonial details -->
                                </div><!-- end of /.testimonial item 1 -->

                                <div class="item">
                                    <img src="/resources/images/testimonial/2.jpg" width="427" height="427" alt="">
                                    <div class="testimonial-details">
                                        <h3>LINDA WONG</h3><!--  title -->
                                        <p>CEO OF STAR INDUSTRY</p><!-- description -->
                                    </div><!--end of /.testimonial details -->
                                </div><!-- end of /.testimonial item 2 -->

                                <div class="item">
                                    <img src="/resources/images/testimonial/3.jpg" width="427" height="427" alt="">
                                    <div class="testimonial-details">
                                        <h3>LINDA WONG</h3><!--  title -->
                                        <p>CEO OF STAR INDUSTRY</p><!-- description -->
                                    </div><!--end of /.testimonial details -->
                                </div><!-- end of /.testimonial item 3 -->

                                <div class="item">
                                    <img src="/resources/images/testimonial/4.jpg" width="427" height="427" alt="">
                                    <div class="testimonial-details">
                                        <h3>LINDA WONG</h3><!--  title -->
                                        <p>CEO OF STAR INDUSTRY</p><!-- description -->
                                    </div><!--end of /.testimonial details -->
                                </div><!-- end of /.testimonial item 4 -->
                            </div>
                        </div><!-- end of /.column 3 -->
                        <div class="col-lg-6 col-lg-offset-1">
                            <div class="section-title">
                                <h1>Testimoni<span>a</span>l</h1>
                                <div class="section-caption">
                                    <p>Simply dummy text of <span>the printing</span> and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod <span>maxime placeat facere</span> possimus</p><!-- section caption -->
                                </div><!-- end of section caption -->
                            </div><!-- end of section title -->
                            <div class="customNavigation testimonial-navigation">
                                <a class="btn testimonial-prev"><i class="fa fa-angle-left"></i> </a>
                                <a class="btn testimonial-next"><i class="fa fa-angle-right"></i> </a>
                            </div><!-- end of /. navigation -->
                        </div><!-- end of /.column -->
                    </div><!-- end of /. row -->
                </div><!-- end of /. container -->
            </section><!-- end of /.testimonial section -->


            <!-- START TEAM SECTION -->
            <section class="team-section" id="top-books">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 ">
                            <div class="section-title">
                                <h1>Top<span> Book'</span>s</h1><!-- title -->
                                <p>Simply dummy text of <span>the printing</span> and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod <span>maxime placeat facere</span> possimus cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus</p><!-- section caption -->
                            </div><!-- end of /.section title -->
                        </div><!-- end of /.cloumn 6 -->
                    </div><!-- end of /. row -->

                    <div class="row">
                        <div class="col-md-3">
                            <div class="team-profile wow fadeInLeft animated" data-wow-delay="0.2s">
                                <img class="img-responsive" src="/resources/images/team/1.jpg" width="435" height="560" alt="">
                                <div class="team-area">
                                    <div class="team-details">
                                         <h2>MELLANIE CLARK</h2><!-- team member name -->
                                        <h3>GRAPHIC DESIGNER</h3><!-- team member designation -->
                                        <p>Nam libero tempore, cum soluta obis est eligendi optio cumque nihil impedit quo minus id quod maxime </p><!-- team member description -->
                                        <ul class="team-social">
                                            <li><a href="#"><i class="fa fa-facebook"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-skype"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-behance"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-envelope"></i> </a></li>
                                        </ul><!-- end of /. team social media  -->
                                    </div><!-- end of team details -->
                                </div><!-- end of /.team area -->
                            </div><!-- end of /.team profile -->
                        </div><!-- end of /.colimn -->
                        <div class="col-md-3">
                            <div class="team-profile wow fadeInLeft animated" data-wow-delay="0.3s">
                                <img class="img-responsive" src="/resources/images/team/2.jpg" width="730" height="560" alt="">
                                <div class="team-area">
                                    <div class="team-details">
                                        <h2>PAMAN GEMBUL</h2><!-- team member name -->
                                        <h3>GRAPHIC DESIGNER</h3><!-- team member designation -->
                                        <p>Nam libero tempore, cum soluta obis est eligendi optio cumque nihil impedit quo minus id quod maxime </p><!-- team member description -->
                                        <ul class="team-social">
                                            <li><a href="#"><i class="fa fa-facebook"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-skype"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-behance"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-envelope"></i> </a></li>
                                        </ul><!-- end of /. team social media  -->
                                    </div><!-- end of team details -->
                                </div><!-- end of /.team area -->
                            </div><!-- end of /.team profile -->
                        </div><!-- end of /.column 6 -->

                        <div class="col-md-3">
                            <div class="team-profile wow fadeInLeft animated" data-wow-delay="0.4s">
                                <img class="img-responsive" src="/resources/images/team/3.jpg" width="730" height="560" alt="">
                                <div class="team-area">
                                    <div class="team-details">
                                        <h2>DESSY BEBEK BENGIL</h2><!-- team member name -->
                                        <h3>Web Developer</h3><!-- team member designation -->
                                        <p>Nam libero tempore, cum soluta obis est eligendi optio cumque nihil impedit quo minus id quod maxime </p><!-- team member description -->
                                        <ul class="team-social">
                                            <li><a href="#"><i class="fa fa-facebook"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-skype"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-behance"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-envelope"></i> </a></li>
                                        </ul><!-- end of /. team social media  -->
                                    </div><!-- end of team details -->
                                </div><!-- end of /.team area -->
                            </div><!-- end of /.team profile -->
                        </div><!-- end of /.column 6 -->

                        <div class="col-md-3">
                            <div class="team-profile wow fadeInLeft animated" data-wow-delay="0.5s">
                                <img class="img-responsive" src="/resources/images/team/4.jpg" width="730" height="560" alt="">
                                <div class="team-area">
                                    <div class="team-details">
                                        <h2>Tom Jacson</h2><!-- team member name -->
                                        <h3>Web Developer</h3><!-- team member designation -->
                                        <p>Nam libero tempore, cum soluta obis est eligendi optio cumque nihil impedit quo minus id quod maxime </p><!-- team member description -->
                                        <ul class="team-social">
                                            <li><a href="#"><i class="fa fa-facebook"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-skype"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-behance"></i> </a></li>
                                            <li><a href="#"><i class="fa fa-envelope"></i> </a></li>
                                        </ul><!-- end of /. team social media  -->
                                    </div><!-- end of team details -->
                                </div><!-- end of /.team area -->
                            </div><!-- end of /.team profile -->
                        </div><!-- end of /.column 6 -->
                    </div><!-- end of /. row  -->

                </div><!-- end of /.container -->
            </section><!-- end of /.team section  -->

            <!-- START SKILL SECTION -->
            <section class="skill-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title meet-title skill-title">
                                <h1>Sk<span>i</span>ll</h1>
                                <p>Simply dummy text of the printing and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placea.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-5 col-lg-offset-1">
                            <div class="skillst1">
                				<div class="skillbar wow fadeInDown animated" data-percent="88%" data-wow-delay="0.2s">
                                    <div class="title">Photoshop</div>
                					<div class="count-bar">
                						<div class="count"></div>
                					</div>
                				</div>
                				<div class="skillbar wow fadeInDown animated" data-percent="80%" data-wow-delay="0.4s">
                					<div class="title">Indesign</div>
                					<div class="count-bar">
                						<div class="count"></div>
                					</div>
                				</div>
                				<div class="skillbar wow fadeInDown animated" data-percent="92%" data-wow-delay="0.6s">
                					<div class="title">Illustrator</div>
                					<div class="count-bar">
                						<div class="count"></div>
                					</div>
                				</div>
                			</div>
                        </div><!-- end of /.column -->
                         <div class="col-lg-5">
                            <div class="skillst1">
                				<div class="skillbar wow fadeInDown animated" data-percent="88%" data-wow-delay="0.8s">
                					<div class="title">Flash MX</div>
                					<div class="count-bar">
                						<div class="count"></div>
                					</div>
                				</div>
                				<div class="skillbar wow fadeInDown animated" data-percent="80%" data-wow-delay="0.10s">
                					<div class="title">Lightroom</div>
                					<div class="count-bar">
                						<div class="count"></div>
                					</div>
                				</div>
                				<div class="skillbar wow fadeInDown animated" data-percent="92%" data-wow-delay="0.12s">
                					<div class="title">After Effect</div>
                					<div class="count-bar">
                						<div class="count"></div>
                					</div>
                				</div>
                			</div>
                        </div><!-- end of /. coulmn -->
                    </div><!-- end of /. row -->
                </div><!-- end of /.container -->
            </section><!-- end of/. skill section -->

            <!-- START PROJET SECTION -->
            <section class="project-counter-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title">
                                <h1>Funfa<span>c</span>t</h1>
                            </div>
                        </div><!-- end of/.column -->
                        <div class="col-lg-6 col-lg-offset-3">
                            <p>Simply dummy text of <span>the printing</span> and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placea.</p>
                        </div><!-- end of /.column -->
                    </div><!-- end of/.row -->
                    <div class="row">
                        <div class="col-sm-2 col-sm-offset-1">
                            <div class="counter-area wow fadeInDown animated" data-wow-delay="0.2s">
                                <span class="counter">365</span>
                            </div>
                            <h3>Coffee Cups</h3>
                        </div>
                        <div class="col-sm-2 col-sm-offset-1">
                            <div class="counter-area wow fadeInDown animated" data-wow-delay="0.4s">
                                <span class="counter">214</span>
                            </div>
                            <h3>Clients Testimonial</h3>
                        </div>
                        <div class="col-sm-2 col-sm-offset-1">
                            <div class="counter-area wow fadeInDown animated" data-wow-delay="0.6s">
                                <span class="counter">623</span>
                            </div>
                            <h3>Cookies</h3>
                        </div>
                        <div class="col-sm-2 col-sm-offset-1">
                            <div class="counter-area wow fadeInDown animated" data-wow-delay="0.8s">
                                <span class="counter">852</span>
                            </div>
                            <h3>Music Played</h3>
                        </div>
                    </div><!-- end of /.row -->
                </div><!-- end of /.container -->
            </section><!-- end of /. projeck counter section -->

            <!-- START FOLLOW SECTION -->
            <section class="follow-us-section" id="contact">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-lg-offset-1">
                            <div class="meet-title section-title title-section ">
                                <span>ON SOCIAL MEDIA</span>
                                <h1>Foll<span>o</span>wus</h1>
                            </div>
                        </div><!-- end of column -->
                        <div class="col-lg-4 col-lg-offset-3">
                            <div class="social-follow">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i> </a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i> </a></li>
                                    <li><a href="#"><i class="fa fa-instagram"></i> </a></li>
                                    <li><a href="#"><i class="fa fa-pinterest-square"></i> </a></li>
                                    <li><a href="#"><i class="fa fa-youtube"></i> </a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i> </a></li>
                                    <li><a href="#"><i class="fa fa-behance"></i> </a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i> </a></li>
                                    <li><a href="#"><i class="fa fa-vimeo"></i> </a></li>
                                </ul>
                            </div>
                        </div><!-- end of /. column -->
                    </div><!-- end of /.row -->
                </div><!-- end of /.container -->
            </section><!-- end of /.follow section -->

            <!-- START CONTACT SECTION -->
            <section class="contact-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title meet-title skill-title contact-title">
                                <h1>Contact<span>U</span>s</h1>
                                <p>Simply dummy text of the printing and typesetting industry. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placea.</p>
                            </div><!-- end of /. section tile -->
                        </div><!-- end of /.column -->
                    </div><!-- end of /.row -->
                    <div class="row">
                        <div class="col-lg-3 col-lg-offset-1">
                            <div class="footer-infomation">
                                <h1>Book'<span>S House</span></h1>
                                <p><i class="fa fa-map-marker"></i> &nbsp;Kiev City<br> UA 04215 Ukraine</p>
                                <p><i class="fa fa-envelope"></i> &nbsp;Benedictum1@mail.ru</p>
                                <p><i class="fa fa-phone"></i> &nbsp;+38 063 973 15 71</p>
                                <p><i class="fa fa-globe"></i> &nbsp;www.domain.com</p>
                                <div class="social-follow">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i> </a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i> </a></li>
                                        <li><a href="#"><i class="fa fa-instagram"></i> </a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i> </a></li>
                                        <li><a href="#"><i class="fa fa-behance"></i> </a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i> </a></li>
                                        <li><a href="#"><i class="fa fa-vimeo"></i> </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="contact-area">
                                <form action="/feedback" method="post">
                                    <div class="form-group col-lg-4 wow fadeInDown animated" data-wow-delay="0.2s">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="NAME">
                                    </div>
                                    <div class="form-group col-lg-4 wow fadeInDown animated" data-wow-delay="0.2s">
                                        <input type="email" name="email" class="form-control" id="email" placeholder="EMAIL">
                                    </div>

                                    <div class="form-group col-lg-12 wow fadeInDown animated" data-wow-delay="0.2s">
                                        <textarea name="message" id="message" cols="30" rows="5" placeholder="MESSAGE"></textarea>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <button type="submit" class="btn contact-submit">SEND</button>
                                        </div>
                                    </div>
                                </form><!-- end of form -->
                            </div><!-- end of /.contact area-->
                        </div><!-- end of /.column -->
                    </div><!-- end of /.row -->
                </div><!-- end of /. container -->
            </section><!-- end of /.contact section -->

            <!-- START FOOTER SECTION -->
            <footer class="footer-section">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <p>2017.All Right Reserved. Design by <span>Viktor Yurlov</span></p>
                        </div><!-- end of/. column -->
                    </div><!-- end of /.row -->
                </div><!-- end of /.container -->
            </footer><!-- end of /.footer section -->

        </div><!-- end of /. wrapper -->
        <div id='easy-top'></div>

        <!-- JQUERY LIBRARY -->
        <script src="/resources/js/vendor/jquery-1.11.2.min.js"></script>
        <!-- BOOTSTRAP -->
        <script src="/resources/js/vendor/bootstrap.min.js"></script>
        <!-- OWL CAROUSEL -->
        <script src="/resources/js/owl.carousel.min.js"></script>
        <!-- ISOTOPE -->
        <script src="/resources/js/isotope.pkgd.min.js"></script>
        <!-- APPEAR JS  -->
        <script src="/resources/js/jquery.appear.js"></script>
        <!-- WAYPOINTS -->
        <script src="/resources/js/waypoints.min.js"></script>
        <!-- COUNTER UP -->
        <script src="/resources/js/jquery.counterup.min.js"></script>
        <!-- NICESCROLL -->
        <script src="/resources/js/jquery.nicescroll.min.js"></script>
        <!-- PRETTY PHOTO -->
        <script src="/resources/js/jquery.prettyPhoto.js"></script>
        <!-- EASING -->
        <script src='/resources/js/easing.js'></script>

        <script src="/resources/js/wow.min.js"></script>
        <!-- CUSTOM JS -->
        <script src="/resources/js/custom.js"></script>

    </body>
</html>
