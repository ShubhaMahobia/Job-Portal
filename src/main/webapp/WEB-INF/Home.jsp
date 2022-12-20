<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="UTF-8">
<title>ABC Jobs</title>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap"
	rel="stylesheet">
<link href="<c:url value="/resources/css/header_style.css" />"
	rel="stylesheet">
</head>
<body>
	<header>
		<div>
			<jsp:include page="Header.jsp" />
		</div>
		<div class="welcome-text">
			<h1 style="margin-left: -23%; margin-top: -155px">
				Get Personalized <br> Job Recommendations
			</h1>
			<a style="margin-left: -24%;" href="/register">Register Now</a>
		</div>
	</header>

	<div>
		<jsp:include page="Footer.jsp" />
	</div>

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
	height: -4px;
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