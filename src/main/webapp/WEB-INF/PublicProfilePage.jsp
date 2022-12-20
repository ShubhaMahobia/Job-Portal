<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="<c:url value="/resources/css/profile.css" />"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body
	style="background: -webkit-linear-gradient(left, #3931af, #00c6ff);">
	<header>
		<section class="ftco-section">


			<nav
				class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
				id="ftco-navbar">
				<div class="container">
					<a class="navbar-brand" href="/User">A B C</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#ftco-nav" aria-controls="ftco-nav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="fa fa-bars"></span> Menu
					</button>

					<div class="collapse navbar-collapse" id="ftco-nav">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item dropdown">
							<li style="margin-left: 725px;" class="nav-item"><a
								href="profile" class="nav-link">Profile</a></li>
							<li class="nav-item"><a href="/search" class="nav-link">Search</a></li>
							<li class="nav-item"><a href="/logout" class="nav-link">Logout</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- END nav -->

		</section>
	</header>

	<div class="container emp-profile">
		<form method="get" action="/dataupdate">
			<div class="row">
				<div class="col-md-4">
					<div class="profile-img">
						<img
							src="https://cdn.pixabay.com/photo/2018/04/18/18/56/user-3331257_960_720.png"
							alt="" />

					</div>
				</div>
				<div class="col-md-6">
					<div class="profile-head">
						<h5>${usr.first_name } &nbsp; ${usr.last_name}</h5>
						<h6>${usr.email }</h6>

						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="home-tab" data-toggle="tab" href="#home" role="tab"
								aria-controls="home" aria-selected="true">About</a></li>

						</ul>
					</div>
				</div>
				<div class="col-md-2">
					<a style="text-decoration: none;" href="update/${usr.userid}">
						Update Profile </a>
				</div>
			</div>
			<div class="row">

				<div class="col-md-8">
					<div class="tab-content profile-tab" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<div class="row">
								<div class="col-md-6">
									<label style="margin-top: 22px; margin-left: 121px;">User
										Name</label>
								</div>
								<div class="col-md-6">
									<p style="margin-top: 22px;">${usr.userName}</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label style="margin-left: 121px;">Country</label>
								</div>
								<div class="col-md-6">
									<p>${usr.country}</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label style="margin-left: 121px;">Phone</label>
								</div>
								<div class="col-md-6">
									<p>${usr.phone }</p>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<label style="margin-left: 121px;">UserId</label>
								</div>
								<div class="col-md-6">
									<p>${usr.userid}</p>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</form>
	</div>
</body>