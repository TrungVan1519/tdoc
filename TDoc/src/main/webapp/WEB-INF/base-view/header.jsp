<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-md navbar-dark bg-dark p-0 py-2 fixed-top">
	<div class="container-fluid">
		<a href="index.html" class="navbar-brand">TDoc</a>
		
		<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse mr-auto ml-5 justify-content-center" id="navbarCollapse">
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

			<ul class="navbar-nav ml-auto mr-5 justify-content-end">
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
					<i class="fab fa-java"></i>
					<span>${linkGroupDTO.groupTitle }</span>
				</h1>
			</div>
		</div>
	</div>
</header>