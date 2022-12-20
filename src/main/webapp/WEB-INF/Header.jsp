<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/header_style.css" />"
	rel="stylesheet">
</head>
<body>
<body>
	<section class="ftco-section">


		<nav
			class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
			id="ftco-navbar">
			<div class="container">
				<a class="navbar-brand" href="/">A B C</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#ftco-nav" aria-controls="ftco-nav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="fa fa-bars"></span> Menu
				</button>

				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item dropdown">
						<li style="margin-left: 725px;" class="nav-item"><a
							href="/login" class="nav-link">Login</a></li>
						<li class="nav-item"><a href="/register" class="nav-link">Register</a></li>

					</ul>
				</div>
			</div>
		</nav>
		<!-- END nav -->

	</section>

	<script src="/resources/js/h_jquery.min.js"></script>
	<script src="/resources/js/h_popper.js"></script>
	<script src="/resources/js/h_bootstrap.min.js"></script>
	<script src="/resources/js/h_main.js"></script>

</body>
</html>