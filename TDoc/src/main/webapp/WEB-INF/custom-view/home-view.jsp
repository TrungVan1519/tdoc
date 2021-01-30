<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Web title -->
<title>Home View</title>

<!-- Web Favicon -->
<!-- Cach 1: Su dung the c:url> -->
<link rel="shortcut icon"
	href="<c:url value="/static-source/image/favicon/favicon.ico"/>">
<!-- Cach 2: Su dung contextPath -->
<!-- <link rel="shortcut icon" href="${pageContext.request.contextPath }/static-source/image/favicon/favicon.ico"> -->

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">

<!-- Icons of web FontAwesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
	integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
	crossorigin="anonymous">

<!-- Reference Bootstrap CDN -->
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">

<!-- Reference Ajax CDN -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- My css file -->
<link rel="stylesheet"
	href="<c:url value='/static-source/css/style.css'/>" type="text/css">

</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark p-0 py-2 fixed-top">
		<div class="container-fluid">
			<a href="index.html" class="navbar-brand">TDoc</a>
			
			<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="collapse navbar-collapse mr-auto ml-auto justify-content-center" id="navbarCollapse">
		        <ul class="nav nav-pills">
			     	<c:forEach items="${linkListBean.linkListDTOs }" var="linkListDTO" varStatus="firstGen">
					    <li class="nav-item dropdown">
				        	<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">${linkListDTO.listTitle }</a>
					        <div class="dropdown-menu">
					        	<c:forEach items="${linkListDTO.linkGroupDTOs }" var="linkGroupDTO" varStatus="secondGen">
					        		<a href="#" class="dropdown-item">${linkGroupDTO.groupTitle }</a>
					            	<div class="dropdown-divider"></div>
					        	</c:forEach>
					        </div>
					    </li>
		        	</c:forEach>
				    
				    <li class="nav-item px-2">
						<a href="#" class="nav-link">About</a>
					</li>
					<li class="nav-item px-2">
						<a href="#" class="nav-link">Contact</a>
					</li>
					
				    <!-- <li class="nav-item dropdown">
				        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Java</a>
				        <div class="dropdown-menu">
				            <a href="#" class="dropdown-item">Core</a>
				            <div class="dropdown-divider"></div>
				            <a href="#" class="dropdown-item">OOP</a>
				            <div class="dropdown-divider"></div>
				            <a href="#" class="dropdown-item">File</a>
				            <div class="dropdown-divider"></div>
				            <a href="#"class="dropdown-item">Collection</a>
				        </div>
				    </li>
				    <li class="nav-item dropdown">
				        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Javascript</a>
				        <div class="dropdown-menu">
				            <a href="#" class="dropdown-item">Core</a>
				            <div class="dropdown-divider"></div>
				            <a href="#" class="dropdown-item">ES6</a>
				        </div>
				    </li> -->
				</ul>
	
				<ul class="navbar-nav ml-auto mr-3 justify-content-end">
					<li class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"> 
							<i class="fas fa-user"></i> Welcome Admin
						</a>
						<div class="dropdown-menu">
							<a href="profile.html" class="dropdown-item"> 
								<i class="fas fa-user-circle"></i> Profile
							</a> 
							<a href="settings.html" class="dropdown-item"> 
								<i class="fas fa-cog"></i> Settings
							</a>
						</div>
					</li>
					<li class="nav-item">
						<a href="login.html" class="nav-link">
							<i class="fas fa-user-times"></i> Logout
						</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!-- HEADER -->
	<header id="main-header" class="bg-primary text-white pt-70-xs" style="padding-top: 60px;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<h1>
						<i class="fas fa-home"></i>
						<span>Home View</span>
					</h1>
				</div>
			</div>
		</div>
	</header>

	<%-- <div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
				<tiles:insertAttribute name="menu" />
			</div>
			<div class="col-md-9">
				<tiles:insertAttribute name="body" />
			</div>
		</div>
	</div>
	
	<tiles:insertAttribute name="footer" /> --%>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
	<script src="https://cdn.ckeditor.com/4.9.2/standard/ckeditor.js"></script>

	<!--My .js file-->
	<script src="<c:url value="/static-source/js/script.js"/>"></script>
</body>
</html>