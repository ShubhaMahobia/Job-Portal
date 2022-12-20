<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply Job</title>
<style>
/* all */
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap")
	;

* {
	margin: -4px;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

:root { -
	-main-blue: #71b7e6; -
	-main-purple: #9b59b6; -
	-main-grey: #ccc; -
	-sub-grey: #d9d9d9;
}

body {
	display: flex;
	height: 100vh;
	justify-content: center; /*center vertically */
	align-items: center; /* center horizontally */
	background: linear-gradient(135deg, var(- -main-blue),
		var(- -main-purple));
	padding: 10px;
}
/* container and form */
.container {
	max-width: 700px;
	width: 100%;
	background: #fff;
	padding: 25px 30px;
	border-radius: 5px;
	height: 580px;
}

.container .title {
	font-size: 25px;
	font-weight: 500;
	position: relative;
}

.container .title::before {
	content: "";
	position: absolute;
	height: 3.5px;
	width: 30px;
	background: linear-gradient(135deg, var(- -main-blue),
		var(- -main-purple));
	left: 0;
	bottom: 0;
}

.container form .user__details {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin: 20px 0 12px 0;
}
/* inside the form user details */
form .user__details .input__box {
	width: calc(100%/ 2 - 20px);
	margin-bottom: 15px;
}

.user__details .input__box .details {
	font-weight: 500;
	margin-bottom: 5px;
	display: block;
}

.user__details .input__box input {
	height: 45px;
	width: 100%;
	outline: none;
	border-radius: 5px;
	border: 1px solid var(- -main-grey);
	padding-left: 15px;
	font-size: 16px;
	border-bottom-width: 2px;
	transition: all 0.3s ease;
	Cursor: text !important;
	Text-Decoration: None !important;
}

.user__details .input__box input:focus, .user__details .input__box input:valid
	{
	border-color: var(- -main-purple);
}

/* inside the form gender details */
form .gender__details .gender__title {
	font-size: 20px;
	font-weight: 500;
}

form .gender__details .category {
	display: flex;
	width: 80%;
	margin: 15px 0;
	justify-content: space-between;
}

.gender__details .category label {
	display: flex;
	align-items: center;
}

.gender__details .category .dot {
	height: 18px;
	width: 18px;
	background: var(- -sub-grey);
	border-radius: 50%;
	margin: 10px;
	border: 5px solid transparent;
	transition: all 0.3s ease;
}

#dot-1:checked ~ .category .one, #dot-2:checked ~ .category .two, #dot-3:checked 
	 ~ .category .three {
	border-color: var(- -sub-grey);
	background: var(- -main-purple);
}

form input[type="radio"] {
	display: none;
}

/* submit button */
form .button {
	height: 45px;
	margin: 45px 0;
}

.buttonsss input {
	height: 41px;
	width: 23%;
	outline: none;
	color: #000;
	border: none;
	font-size: 18px;
	font-weight: 500;
	border-radius: 5px;
	transition: all 0.3s ease;
	cursor: pointer
}

.buttonsss button {
	margin-left: 1px;
	margin-top: 20px;
	height: 41px;
	width: 23%;
	outline: none;
	color: #000;
	border: none;
	font-size: 18px;
	font-weight: 500;
	border-radius: 5px;
	transition: all 0.3s ease;
	cursor: pointer
}

.buttonsss input:hover {
	background: #00FF00
}

.buttonsss button:hover {
	color: white;
	background: red;
}

@media only screen and (max-width: 584px) {
	.container {
		max-width: 100%;
	}
	form .user__details .input__box {
		margin-bottom: 15px;
		width: 100%;
	}
	form .gender__details .category {
		width: 100%;
	}
	.container form .user__details {
		max-height: 300px;
		overflow-y: scroll;
	}
	html {
		overflow-y: scroll;
	}
	.custom-selector {
		position: relative;
		display: inline-block;
		font-size: 14px;
		color: #888
	}
	.custom-selector select {
		width: 200px;
		min-height: 35px;
		background: #cbe7ff;
		border-radius: 3px;
		border: 2px solid #2196f3;
		outline: none;
	}
}
</style>
</head>
<body>
	<div class="container">
		<div class="title">Job Details</div>
		<sf:form action="/addjobseeker" method="Post" modelAttribute="job">
			<div class="user__details">
				<div class="input__box">
					<span class="details">Full Name</span>
					<sf:input type="text" name="author" id="name" class="form-control"
						path="author" placeholder="Post By-" disabled="disabled"
						style="pointer-events: none;" />
					<sf:errors path="author" class="errors"></sf:errors>
				</div>
				<div class="input__box">
					<span class="details">Email</span>
					<sf:input type="email" name="email" id="email" class="form-control"
						path="email" placeholder="Write your Email" disabled="disabled"
						style="pointer-events: none;" />
					<sf:errors path="email" class="errors"></sf:errors>
				</div>
				<div class="input__box">
					<span class="details">Company</span>
					<sf:input type="text" name="company" id="company"
						class="form-control" path="company" disabled="disabled"
						style="pointer-events: none;" />
					<sf:errors path="company" class="errors"></sf:errors>
				</div>
				<div class="input__box">
					<span class="details">Salary</span>
					<sf:input name="salary" id="salary" class="form-control"
						placeholder="in Rupees" path="salary" disabled="disabled"
						style="pointer-events: none;" />
					<sf:errors path="salary" class="errors"></sf:errors>
				</div>
				<div class="input__box">
					<span class="details">Working Hours</span>
					<sf:input type="number" name="working_hours" id="working_hours"
						class="form-control" path="working_hours" disabled="disabled"
						style="pointer-events: none;" />
					<sf:errors path="working_hours" class="errors"></sf:errors>
				</div>


				<div class="custom-selector" id="old_job_title">
					<sf:select
						style="width:92%; height:40px; background: #cbe7ff; border-radius: 3px; border: 2px solid #ffffff;outline: none;font-size: 14px; margin-left: 20px;    margin-top: 22px;    margin-right: 106px;"
						path="job_Title" disabled="disabled">
						<sf:option class="text-muted" path="job_Title" value="job_Title">--Select Job Title--</sf:option>
						<sf:option path="job_Title" value="Software Engineer">Software Engineer</sf:option>
						<sf:option path="job_Title" value="Data Anaylst">Data analyst</sf:option>
						<sf:option path="job_Title" value="Frontend Develope">Front end Developer</sf:option>
						<sf:option path="job_Title" value="Back end Developer">Back end Developer</sf:option>
						<sf:option path="job_Title" value="Java Developer">Java Developer</sf:option>
						<sf:option path="job_Title" value="Full Stack Web Developer">Full Stack Web Developer</sf:option>
						<sf:option id="other" onclick="change()" path="job_Title"
							value="job_Title">Any Others</sf:option>
					</sf:select>
					<sf:errors path="job_Title" class="errors"></sf:errors>
				</div>
				<div class="input__box">
					<span class="details">Job Details</span>
					<textarea name="details" id="details" cols="98" rows="5"
						path="details" class="form-control " disabled></textarea>
					<sf:errors path="details" class="errors"></sf:errors>
				</div>
			</div>
			<div class="buttonsss">
				<input style="" type="submit" value="&nbsp;Apply&nbsp;"
					id="btn_right">
			</div>

			<div class="buttonsss">
				<a href="viewjobsUser"><button>BACK</button></a>
			</div>
		</sf:form>
	</div>

</body>
</html>