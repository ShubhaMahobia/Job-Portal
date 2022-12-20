<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>ABC Jobs</title>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap"
	rel="stylesheet">

<link href="<c:url value="/resources/css/header_style.css" />"
	rel="stylesheet">
<script type="text/javascript">
	/* When the user clicks on the button,
	toggle between hiding and showing the dropdown content */
	function myFunction() {
		document.getElementById("myDropdown").classList.toggle("show");
	}

	// Close the dropdown menu if the user clicks outside of it
	window.onclick = function(event) {
		if (!event.target.matches('.dropbtn')) {
			var dropdowns = document.getElementsByClassName("dropdown-content");
			var i;
			for (i = 0; i < dropdowns.length; i++) {
				var openDropdown = dropdowns[i];
				if (openDropdown.classList.contains('show')) {
					openDropdown.classList.remove('show');
				}
			}
		}
	}
</script>
<style type="text/css">
.dropbtn {
	background-color: Transparent;
	color: white;
	padding: 5px 20px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

/* Dropdown button on hover & focus */
.dropbtn:hover, .dropbtn:focus {
	background-color: #fff;
	color: black;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
	position: relative;
	display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
	background-color: #ddd
}

/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {
	display: block;
}
</style>
</head>
<body>
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
		<div class="welcome-text">
			<h1 style="margin-left: -25%; margin-top: -155px; color: white">
				Startup jobs & startup talent you can't find anywhere else</h1>
			<a style="margin-left: -25%; margin-top-110px; font-weight: bold;"
				href="/viewjobsUser">Explore Opportunities</a>
		</div>
	</header>
	<footer>
		<div>
			<jsp:include page="Footer.jsp" />
		</div>
	</footer>
</body>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	font-family: 'Poppins', sans-serif;
}

.wrapper {
	width: 1170px;
	margin: auto;
}

header {
	background: linear-gradient(rgba(0, 0, 0, 0.0), rgba(0, 0, 0, 0.0)),
		url(https://images.pexels.com/photos/281260/pexels-photo-281260.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
	height: 100vh;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	position: relative;
}

.nav-area {
	float: right;
	list-style: none;
	margin-top: 30px;
}

.nav-area li {
	display: inline-block;
}

.nav-area li a {
	color: #fff;
	text-decoration: none;
	padding: 5px 20px;
	font-family: poppins;
	font-size: 16px;
	text-transform: uppercase;
}

.nav-area li a:hover {
	background: #fff;
	color: #333;
}

.logo {
	float: left;
}

.logo img {
	width: 100%;
	padding: 15px 0;
}

.welcome-text {
	position: absolute;
	width: 600px;
	height: 300px;
	margin: 20% 30%;
	text-align: center;
}

.welcome-text h1 {
	text-align: center;
	color: #fff;
	text-transform: uppercase;
	font-size: 60px;
}

.welcome-text h1 span {
	color: #00fecb;
}

.welcome-text a {
	border: 1px solid #fff;
	padding: 10px 25px;
	text-decoration: none;
	text-transform: uppercase;
	font-size: 14px;
	margin-top: 20px;
	display: inline-block;
	color: #fff;
}

.welcome-text a:hover {
	background: #fff;
	color: #333;
}
/*resposive*/
@media ( max-width :600px) {
	.wrapper {
		width: 100%;
	}
	.logo {
		float: none;
		width: 50%;
		text-align: center;
		margin: auto;
	}
	img {
		width: 10px;
	}
	.nav-area {
		float: none;
		margin-top: 0;
	}
	.nav-area li a {
		padding: 5px;
		font-size: 11px;
	}
	.nav-area {
		text-align: center;
	}
	.welcome-text {
		width: 100%;
		height: auto;
		margin: 30% 0;
	}
	.welcome-text h1 {
		font-size: 30px;
	}
}
</style>
</html>