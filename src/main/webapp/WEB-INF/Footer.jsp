<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<link href="<c:url value="/resources/css/Footer_style.css" />"
	rel="stylesheet">

<title>Insert title here</title>
<style>
#FFF {
	background-color: #965eff;
	color: white;
}
</style>
</head>
<body>
	<div class="footer">
		<div class="col-1">
			<h3>LINKS</h3>
			<a href="#"> About</a> <a href="#"> Contact</a> <a href="/search">
				Search</a> <a href="https://www.youtube.com/"> Youtube</a> <a
				href="https://en.wikipedia.org/wiki/Jobs"> Wikipedia</a>

		</div>
		<div class="col-2">
			<h3>NEWS LETTER</h3>
			<form>
				<input type="email" placeholder="Your Email Address" required>
				<br>
				<button type="submit">Subscribe Now</button>
			</form>
		</div>
		<div class="col-3">
			<h3>CONTACT</h3>
			<p>
				ABC Jobs Pvt. Limited <br> Hoshangabad, Madhya Pradesh <br>
				INDIA
			</p>
			<div class="social-icons">
				<a href="https://about.facebook.com/"> <i style="color: white;"
					class="uil uil-facebook"></i></a> <a
					href="https://www.instagram.com/accounts/login/"> <i
					style="color: white;" class="uil uil-instagram"></i></a> <a
					href="https://twitter.com/i/flow/login"> <i
					style="color: white;" class="uil uil-twitter"></i></a> <a
					href="https://discord.com/"> <i style="color: white;"
					class="uil uil-discord"></i></a>

			</div>
		</div>


	</div>

</body>
</html>