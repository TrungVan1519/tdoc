<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!--Impotant meta tags-->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--Web Title -->
    <title>TDoc</title>

	<!-- Web Favicon -->
	<!-- Cach 1: Su dung the c:url> -->
	<link rel="shortcut icon" href="<c:url value="/static-source/image/favicon/favicon.ico"/>">
	<!-- Cach 2: Su dung contextPath -->
	<!-- <link rel="shortcut icon" href="${pageContext.request.contextPath }/static-source/image/favicon/favicon.ico"> -->

    <!--Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

    <!--Icons of web FontAwesome-->
    <link rel="stylesheet" href="css/font awesome/css/all.min.css">

	<!-- Reference Bootstrap CDN -->
	<!-- Bootstrap CSS -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
		integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
		crossorigin="anonymous">

	<!-- Reference Ajax CDN -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
	<!-- My css file -->
	<link rel="stylesheet" href="<c:url value='/static-source/css/style.css'/>" type="text/css">

</head>
<body>
    <!--Preloader-->
    <!--Nhiem vu: Che file html khi nao load xong js thi fadeOut 2 div nay-->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>

    <!--Home section-->
    <section id="home">
        <!--Cach 1-->
        <!--<video src="video/display.mp4" autoplay loop muted poster="video/poster.jpg"></video>-->
        
        <!--Cach 2:-->
        <!--poster: Tu dong load anh khi video vi 1 ly do nao do khong the load dc-->
        <!--autoplay: Tu dong chay video ma khong can tac dong-->
        <!--loop: Tu dong lap di lap lai video-->
        <!--muted: chay video nhung tat tieng-->
        <%-- <video id="home-bg-video" poster="<c:url value="/static-source/video/poster.jpg"/>" autoplay loop muted>
            <source src="<c:url value="/static-source/video/display.mp4" type="video/mp4"/>">
        </video> --%>

        <!--Overlay-->
        <!--Dung de che len video tuong tu nhu div preloader che len toan bo page-->
        <!--Nhung ta su dung cai nay de tao hieu ung chu khong che hoan toan video-->
        <div id="home-overlay"></div>

        <!--Home content-->
        <!--class="text-center" la class co san cua bootstrap-->
        <!--class="btn" la class co san cua bootstrap-->
        <div id="home-content" class="text-center">
            <div id="home-content-inner">
                <div id="home-heading">
                    <h1 id="home-heading-1">Digital</h1>
                    <h1 id="home-heading-2">Creative<span>Agency</span>
                    </h1>
                </div>
                <div id="home-text">
                    <p>Welcome to my website</p>
                </div>
                <div id="home-btn">
                        <a href="#about" class="btn btn-custom-general btn-custom-home" title="Start Now" role="button">Start Now</a>
                </div>
            </div>
        </div>

        <!--Arrow down-->
        <!--class="fa fa-angle-down" la class co san cua website fontawesome-->
        <a href="#about" id="arrow-down">
            <i class="fa fa-angle-down"></i>
        </a>
    </section>
    <!--Home section end-->

    <!--About section-->
    <section id="about">

           <!--About part 1-->
           <div id="about-1">
                <div class="content-box-lg">
                    <div class="container">

                        <!--About top-->
                        <div class="row">

                            <!--About left side-->
                            <div class="col-md-6">
                                <div class="about-left">
                                    <div class="vertical-heading">
                                        <h5>Who we are</h5>
                                        <h2>A <strong>Story</strong><br>About Us</h2>
                                    </div>
                                </div>
                            </div>

                            <!--About right side-->
                            <div class="col-md-6">
                                <div id="about-right">
                                    <p>
                                        abc xyz blah blah blah... ole ola cha ma ca la ta ra jsajdajd ajdskj
                                        hsahdsha dhsaadhk jshadh sadhksahd yywuyausjkdhaa dhhakds
                                    </p>
                                    <p>
                                        abc xyz blah blah blah... ole ola cha ma ca la ta ra jsajdajd ajdskj
                                        hsahdsha dhsaadhk jshadh sadhksahd yywuyausjkdhaa dhhakds
                                    </p>
                                </div>
                            </div>
                        </div>

                        <!--About bottom-->
                        <div class="row">

                            <!--This is single column-->
                            <div class="col-md-12">
        
                                <!--class="img-reponsive" la class co san cua bootstrap=-->
                              <%--   <div id="about-bottom">
                                    <img src="<c:url value="/static-source/img/about/netmarble1.png" alt="Text instead error" class="img-responsive"/>">
                                </div> --%>
                            </div>
                        </div>
                    </div>
                </div>
           </div>
           <!--About part 1 end-->

           <!--About part 2-->
           <div id="about-2">
                <div class="content-box-md">
                    <div class="container">
                        <div class="row">
                           <div class="col-md-4">
                                <div class="about-item text-center">
                                    <i class="fa fa-rocket"></i>
                                    <h3>Mission</h3>
                                    <hr>
                                    <p>
                                        abc xyz blah blah blah... ole ola cha ma ca la ta ra jsajdajd ajdskj
                                        hsahdsha dhsaadhk jshadh sadhksahd yywuyausjkdhaa dhhakds
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="about-item text-center">
                                    <i class="fa fa-eye"></i>
                                    <h3>Vision</h3>
                                    <hr>
                                    <p>
                                        abc xyz blah blah blah... ole ola cha ma ca la ta ra jsajdajd ajdskj
                                        hsahdsha dhsaadhk jshadh sadhksahd yywuyausjkdhaa dhhakds
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="about-item text-center">
                                        <i class="fa fa-pencil-alt"></i>
                                    <h3>Passion</h3>
                                    <hr>
                                    <p>
                                        abc xyz blah blah blah... ole ola cha ma ca la ta ra jsajdajd ajdskj
                                        hsahdsha dhsaadhk jshadh sadhksahd yywuyausjkdhaa dhhakds
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--About part 2 end-->

    </section>
    <!--About section end-->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
		
	<!--My .js file-->
	<script src="<c:url value="/static-source/js/script.js"/>"></script>
</body>
</html>