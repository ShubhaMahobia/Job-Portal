<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<Style>
.daterangepicker, .select2-container--open .select2-dropdown--below {
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15)
}

.font-robo {
	font-family: Roboto, Arial, "Helvetica Neue", sans-serif
}

.font-poppins {
	font-family: Poppins, Arial, "Helvetica Neue", sans-serif
}

.font-opensans, body {
	font-family: "Open Sans", Arial, "Helvetica Neue", sans-serif
}

.row {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap
}

.row .col-2:last-child .input-group-desc {
	margin-bottom: 0
}

.row-space {
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-moz-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between
}

.row-refine {
	margin: 0 -15px
}

.row-refine .col-3 .input-group-desc, .row-refine .col-9 .input-group-desc
	{
	margin-bottom: 0
}

.col-2 {
	width: -webkit-calc(( 100% - 30px)/2);
	width: -moz-calc(( 100% - 30px)/2);
	width: calc(( 100% - 30px)/2)
}

@media ( max-width :767px) {
	.col-2 {
		width: 100%
	}
}

.form-row {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-moz-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	margin-bottom: 40px
}

.form-row .name {
	width: 125px;
	color: #555;
	font-size: 15px;
	font-weight: 700
}

body, h1, h2, h3, h4, h5, h6 {
	font-weight: 400
}

.form-row .value {
	width: -webkit-calc(100% - 125px);
	width: -moz-calc(100% - 125px);
	width: calc(100% - 125px)
}

@media ( max-width :767px) {
	.form-row {
		display: block
	}
	.form-row .name, .form-row .value {
		display: block;
		width: 100%
	}
	.form-row .name {
		margin-bottom: 7px
	}
}

.col-3, .col-9 {
	padding: 0 15px;
	position: relative;
	width: 100%;
	min-height: 1px
}

*, blockquote, body, dd, dl, fieldset, figure, h1, h2, h3, h4, h5, h6,
	hr, legend, ol, p, pre, ul {
	margin: 0;
	padding: 0
}

.col-3 {
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 25%;
	-moz-box-flex: 0;
	-ms-flex: 0 0 25%;
	flex: 0 0 25%;
	max-width: 25%
}

@media ( max-width :767px) {
	.col-3 {
		-webkit-box-flex: 0;
		-webkit-flex: 0 0 35%;
		-moz-box-flex: 0;
		-ms-flex: 0 0 35%;
		flex: 0 0 35%;
		max-width: 35%
	}
}

.col-9 {
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 75%;
	-moz-box-flex: 0;
	-ms-flex: 0 0 75%;
	flex: 0 0 75%;
	max-width: 75%
}

@media ( max-width :767px) {
	.col-9 {
		-webkit-box-flex: 0;
		-webkit-flex: 0 0 65%;
		-moz-box-flex: 0;
		-ms-flex: 0 0 65%;
		flex: 0 0 65%;
		max-width: 65%
	}
}

html {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box
}

*, :after, :before {
	-webkit-box-sizing: inherit;
	-moz-box-sizing: inherit;
	box-sizing: inherit
}

li>ol, li>ul {
	margin-bottom: 0
}

table {
	border-collapse: collapse;
	border-spacing: 0
}

fieldset {
	min-width: 0;
	border: 0
}

button {
	outline: 0;
	background: 0 0;
	border: none
}

.page-wrapper {
	min-height: 100vh
}

body {
	font-size: 14px
}

h1 {
	font-size: 36px
}

h2 {
	font-size: 30px
}

h3 {
	font-size: 24px
}

h4 {
	font-size: 18px
}

h5 {
	font-size: 15px
}

h6 {
	font-size: 13px
}

.bg-blue {
	background: #2c6ed5
}

.bg-red {
	background: #fa4251
}

.bg-gra-01 {
	background: -webkit-gradient(linear, left bottom, left top, from(#fbc2eb),
		to(#a18cd1));
	background: -webkit-linear-gradient(bottom, #fbc2eb 0, #a18cd1 100%);
	background: -moz-linear-gradient(bottom, #fbc2eb 0, #a18cd1 100%);
	background: -o-linear-gradient(bottom, #fbc2eb 0, #a18cd1 100%);
	background: linear-gradient(to top, #fbc2eb 0, #a18cd1 100%)
}

.bg-gra-02 {
	background: -webkit-gradient(linear, left bottom, right top, from(#fc2c77),
		to(#6c4079));
	background: -webkit-linear-gradient(bottom left, #fc2c77 0, #6c4079 100%);
	background: -moz-linear-gradient(bottom left, #fc2c77 0, #6c4079 100%);
	background: -o-linear-gradient(bottom left, #fc2c77 0, #6c4079 100%);
	background: linear-gradient(to top right, #fc2c77 0, #6c4079 100%)
}

.bg-gra-03 {
	background: -webkit-gradient(linear, left bottom, right top, from(#08aeea),
		to(#b721ff));
	background: -webkit-linear-gradient(bottom left, #08aeea 0, #b721ff 100%);
	background: -moz-linear-gradient(bottom left, #08aeea 0, #b721ff 100%);
	background: -o-linear-gradient(bottom left, #08aeea 0, #b721ff 100%);
	background: linear-gradient(to top right, #08aeea 0, #b721ff 100%)
}

.p-t-100 {
	padding-top: 100px
}

.p-t-130 {
	padding-top: 130px
}

.p-t-180 {
	padding-top: 180px
}

.p-t-45 {
	padding-top: 45px
}

.p-t-20 {
	padding-top: 20px
}

.p-t-15 {
	padding-top: 15px
}

.p-t-10 {
	padding-top: 10px
}

.p-t-30 {
	padding-top: 30px
}

.p-b-100 {
	padding-bottom: 100px
}

.p-b-50 {
	padding-bottom: 50px
}

.m-r-45 {
	margin-right: 45px
}

.m-r-55 {
	margin-right: 55px
}

.m-b-55 {
	margin-bottom: 55px
}

.wrapper {
	margin: 0 auto
}

.wrapper--w960 {
	max-width: 960px
}

.wrapper--w790 {
	max-width: 790px
}

.wrapper--w780 {
	max-width: 780px
}

.wrapper--w680 {
	max-width: 680px
}

.btn {
	display: inline-block;
	line-height: 50px;
	padding: 0 50px;
	-webkit-transition: all .4s ease;
	-o-transition: all .4s ease;
	-moz-transition: all .4s ease;
	transition: all .4s ease;
	cursor: pointer;
	font-size: 15px;
	text-transform: uppercase;
	font-weight: 700;
	color: #fff;
	font-family: inherit
}

.btn--radius {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px
}

.btn--radius-2 {
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px
}

.btn--pill {
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px
}

.btn--green {
	background: #57b846
}

.btn--green:hover {
	background: #4dae3c
}

.btn--blue {
	background: #4272d7
}

.btn--blue:hover {
	background: #3868cd
}

.btn--red {
	background: #ff4b5a
}

.btn--red:hover {
	background: #eb3746
}

td.active {
	background-color: #2c6ed5
}

input[type=datei] {
	padding: 14px
}

.table-condensed td, .table-condensed th {
	font-size: 14px;
	font-family: Roboto, Arial, "Helvetica Neue", sans-serif;
	font-weight: 400
}

.label, .title {
	font-weight: 700
}

.daterangepicker td {
	width: 40px;
	height: 30px
}

.daterangepicker {
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
	display: none;
	border: 1px solid #e0e0e0;
	margin-top: 5px
}

.daterangepicker::after, .daterangepicker::before {
	display: none
}

.daterangepicker thead tr th {
	padding: 10px 0
}

.daterangepicker .table-condensed th select {
	border: 1px solid #ccc;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	font-size: 14px;
	padding: 5px;
	outline: 0
}

input {
	outline: 0;
	margin: 0;
	border: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	width: 100%;
	font-size: 14px;
	font-family: inherit
}

.radio-container {
	display: inline-block;
	position: relative;
	padding-left: 30px;
	cursor: pointer;
	font-size: 16px;
	color: #666;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none
}

.radio-container input {
	position: absolute;
	opacity: 0;
	cursor: pointer
}

.radio-container input:checked ~.checkmark {
	background-color: #e5e5e5
}

.radio-container input:checked ~.checkmark:after {
	display: block
}

.radio-container .checkmark:after {
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	width: 12px;
	height: 12px;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	background: #57b846
}

.checkmark {
	position: absolute;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	-o-transform: translateY(-50%);
	transform: translateY(-50%);
	left: 0;
	height: 20px;
	width: 20px;
	background-color: #e5e5e5;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	-webkit-box-shadow: inset 0 1px 3px 0 rgba(0, 0, 0, .08);
	-moz-box-shadow: inset 0 1px 3px 0 rgba(0, 0, 0, .08);
	box-shadow: inset 0 1px 3px 0 rgba(0, 0, 0, .08)
}

.checkmark:after {
	content: "";
	position: absolute;
	display: none
}

.input-group, .input-group-desc {
	position: relative
}

.input--style-5 {
	background: #e5e5e5;
	line-height: 50px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	padding: 0 22px;
	font-size: 16px;
	color: #555
}

@media ( max-width :767px) {
	.input-group-desc {
		margin-bottom: 40px
	}
}

.input-group {
	margin: 0
}

.label {
	color: #555;
	font-size: 15px
}

.label--block {
	width: 100%
}

.label--desc {
	position: absolute;
	text-transform: capitalize;
	display: block;
	color: #999;
	font-size: 14px;
	margin: 7px 0 0;
	left: 0
}

.select--no-search .select2-search {
	display: none !important
}

.select2-container--open .select2-dropdown--below {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
	border: 1px solid #e0e0e0;
	margin-top: 5px;
	overflow: hidden
}

.select2-container--default .select2-results__option {
	padding-left: 22px
}

.rs-select2 .select2-container {
	width: 100% !important;
	outline: 0;
	background: #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px
}

.rs-select2 .select2-container .select2-selection--single {
	outline: 0;
	border: none;
	height: 50px;
	background: 0 0
}

.card, .card-5 {
	background: #fff
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__rendered
	{
	line-height: 50px;
	color: #555;
	font-size: 16px;
	font-family: inherit;
	padding-left: 22px;
	padding-right: 50px
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow
	{
	height: 50px;
	right: 15px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-moz-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-moz-box-align: center;
	-ms-flex-align: center;
	align-items: center
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow b
	{
	display: none
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow:after
	{
	font-family: Material-Design-Iconic-Font;
	content: '\f2f9';
	font-size: 24px;
	color: #999;
	-webkit-transition: all .4s ease;
	-o-transition: all .4s ease;
	-moz-transition: all .4s ease;
	transition: all .4s ease
}

.rs-select2 .select2-container.select2-container--open .select2-selection--single .select2-selection__arrow::after
	{
	-webkit-transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	transform: rotate(-180deg)
}

.title {
	font-size: 24px;
	text-transform: uppercase;
	text-align: center;
	color: #fff
}

.card {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px
}

.card-5 {
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15)
}

.card-5 .card-heading {
	padding: 20px 0;
	background: #1a1a1a;
	-webkit-border-top-left-radius: 10px;
	-moz-border-radius-topleft: 10px;
	border-top-left-radius: 10px;
	-webkit-border-top-right-radius: 10px;
	-moz-border-radius-topright: 10px;
	border-top-right-radius: 10px
}

.card-5 .card-body {
	padding: 52px 85px 73px
}

@media ( max-width :767px) {
	.card-5 .card-body {
		padding: 40px 30px 50px
	}
}
<
section
 
class
="vh-100"
 
style
="background-color
:
 
#eee
;"
>
<
div
 
class
="container
 
h-100
"
>
<
div
 
class
="row
 
d-flex
 
justify-content-center
 
align-items-center
 
h-100
"
>
<
div
 
class
="col-lg-12
 
col-xl-11
"
>
<
div
 
class
="card
 
text-black
"
 
style
="border-radius
:
 
25
px
;"
>
<
div
 
class
="card-body
 
p-md-5
"
>
<
div
 
class
="row
 
justify-content-center
"
>
<
div
 
class
="col-md-10
 
col-lg-6
 
col-xl-5
 
order-2
 
order-lg-1
"
>
<
p
 
class
="text-center
 
h1
 
fw-bold
 
mb-5
 
mx-1
 
mx-md-4
 
mt-4
"
>
Sign
 
up
</p
>
<
form
 
class
="mx-1
 
mx-md-4
"
>
<
div
 
class
="d-flex
 
flex-row
 
align-items-center
 
mb-4
"
>
<
i
 
class
="fas
 
fa-user
 
fa-lg
 
me-3
 
fa-fw
"
>
</
i
>
<
div
 
class
="form-outline
 
flex-fill
 
mb-0
"
>
<
input
 
type
="text"
 
id
="form3Example1c"
 
class
="form-control"
/
>
<
label
 
class
="form-label"
 
for
="form3Example1c"
>
Your
 
Name
</label
>
</
div
>
</
div
>
<
div
 
class
="d-flex
 
flex-row
 
align-items-center
 
mb-4
"
>
<
i
 
class
="fas
 
fa-envelope
 
fa-lg
 
me-3
 
fa-fw
"
>
</
i
>
<
div
 
class
="form-outline
 
flex-fill
 
mb-0
"
>
<
input
 
type
="email"
 
id
="form3Example3c"
 
class
="form-control"
/
>
<
label
 
class
="form-label"
 
for
="form3Example3c"
>
Your
 
Email
</label
>
</
div
>
</
div
>
<
div
 
class
="d-flex
 
flex-row
 
align-items-center
 
mb-4
"
>
<
i
 
class
="fas
 
fa-lock
 
fa-lg
 
me-3
 
fa-fw
"
>
</
i
>
<
div
 
class
="form-outline
 
flex-fill
 
mb-0
"
>
<
input
 
type
="password"
 
id
="form3Example4c"
 
class
="form-control"
/
>
<
label
 
class
="form-label"
 
for
="form3Example4c"
>
Password
</label
>
</
div
>
</
div
>
<
div
 
class
="d-flex
 
flex-row
 
align-items-center
 
mb-4
"
>
<
i
 
class
="fas
 
fa-key
 
fa-lg
 
me-3
 
fa-fw
"
>
</
i
>
<
div
 
class
="form-outline
 
flex-fill
 
mb-0
"
>
<
input
 
type
="password"
 
id
="form3Example4cd"
 
class
="form-control"
/
>
<
label
 
class
="form-label"
 
for
="form3Example4cd"
>
Repeat
 
your
 
password
</label
>
</
div
>
</
div
>
<
div
 
class
="form-check
 
d-flex
 
justify-content-center
 
mb-5
"
>
<
input
 
class
="form-check-input
 
me-2
"
 
type
="checkbox"
 
value
=""
 
id
="form2Example3c"
/
>
<
label
 
class
="form-check-label"
 
for
="form2Example3"
>
I
 
agree
 
all
 
statements
 
in
 
<
a
 
href
="#!"
>
Terms
 
of
 
service
</a
>
</
label
>
</
div
>
<
div
 
class
="d-flex
 
justify-content-center
 
mx-4
 
mb-3
 
mb-lg-4
"
>
<
button
 
type
="button"
 
class
="btn
 
btn-primary
 
btn-lg
"
>
Register
</button
>
</
div
>
</
form
>
</
div
>
<
div
 
class
="col-md-10
 
col-lg-6
 
col-xl-7
 
d-flex
 
align-items-center
 
order-1
 
order-lg-2
"
>
<
img
 
src
="https
:
//mdbcdn
.b-cdn
.net
/img/Photos/new-templates/bootstrap-registration/draw1
.webp
"

                  
class
="img-fluid"
 
alt
="Sample
 
image
"
>
</
div
>
</
div
>
</
div
>
</
div
>
</
div
>
</
div
>
</
div
>
</
section
>
</Style>




<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Update Profile</title>

<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">


</head>

<body>
	<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<h2 class="title">Profile Update</h2>
				</div>
				<div class="card-body">
					<form method="get" action="dataupdate">
						<div class="form-row m-b-55">
							<div class="name">Name</div>
							<div class="value">
								<div class="row row-space">
									<div class="col-2">
										<div class="input-group-desc">
											<input type="text" name="first_name" class="input--style-5"
												value="${searchView.first_name}" required="required" /> <label
												class="label--desc">first name</label>
										</div>
									</div>
									<div class="col-2">
										<div class="input-group-desc">
											<input type="text" name="last_name" class="input--style-5"
												value="${searchView.last_name}" required="required" /> <label
												class="label--desc">last name</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Country</div>
							<div class="value">
								<div class="input-group">
									<input type="text" name="Country" class="input--style-5"
										value="${searchView.country}" />
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Email</div>
							<div class="value">
								<div class="input-group">
									<input type="text" name="email" class="input--style-5"
										value="${searchView.email}" required="required" />
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="name">Phone Number</div>
							<div class="value">
								<div class="input-group">
									<input type="text" name="phone" class="input--style-5"
										value="${searchView.phone}" required="required" />
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">UserName</div>
							<div class="value">
								<div class="input-group">
									<input type="text" name="userName" class="input--style-5"
										value="${searchView.userName}" required="required" />
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Password</div>
							<div class="value">
								<div class="input-group">
									<input type="password" name="password" class="input--style-5"
										value="${searchView.password}" required="required" />
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">UserId</div>
							<div class="value">
								<div class="input-group">
									<input type="text" name="userid" class="input--style-5"
										value="${searchView.userid}" required="required" />
								</div>
							</div>
						</div>

						<div>
							<button class="btn btn--radius-2 btn--red" value="Update"
								type="submit">UPDATE</button>
						</div>
						<div></div>
					</form>
					<a href="/dashboard">
						<button Style="margin-top: 20px;"
							class="btn btn--radius-2 btn--red">DASH BOARD</button>
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>

</body>
</html>