<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Reset Password</title>
<meta name="description" content="Reset Password Email Template.">
<style type="text/css">
a:hover {
	text-decoration: underline !important;
}

.form__group {
	position: relative;
	padding: 15px 0 0;
	margin-top: 10px;
	width: 50%;
}

.form__field {
	font-family: inherit;
	width: 100%;
	border: 0;
	border-bottom: 2px solid$gray;
	outline: 0;
	font-size: 1.3rem;
	color: $white;
	padding: 7px 0;
	background: transparent;
	transition: border-color 0.2s;
	&::
	placeholder
	{
	color
	:
	transparent;
}

&
:placeholder-shown ~ .form__label {
	font-size: 1.3rem;
	cursor: text;
	top: 20px;
}

}
.form__label {
	position: absolute;
	top: 0;
	display: block;
	transition: 0.2s;
	font-size: 1rem;
	color: $gray;
}

.form__field:focus { ~ .form__label { position:absolute;
	top: 0;
	display: block;
	transition: 0.2s;
	font-size: 1rem;
	color: $primary;
	font-weight: 100;
}

padding-bottom
:
 
6
px
;
  
  
font-weight
:
 
700;
border-width
:
 
3
px
;

  
border-image
:
 
linear-gradient
(to
 
right
,
$
primary
,
$
secondary
);

  
border-image-slice
:
 
1;
}
/* reset input */
.form__field { &:
	required ,&: invalid{ box-shadow:none;
}
}
</style>
</head>
<div>
	<jsp:include page="Header.jsp" />
</div>
<body marginheight="0" topmargin="0" marginwidth="0"
	style="margin: 0px; background-color: #f2f3f8;" leftmargin="0">
	<!--100% body table-->
	<table cellspacing="0" border="0" cellpadding="0" width="100%"
		bgcolor="#f2f3f8" style="">
		<tr>
			<td>
				<form>
					<table
						style="background-color: #f2f3f8; max-width: 670px; margin: 0 auto;"
						width="100%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td style="">&nbsp;</td>
						</tr>
						<tr>
							<td style="text-align: center;"><a href="#" title="logo">
									<img width="200px" height="200px"
									src="https://cdn-icons-png.flaticon.com/512/6195/6195696.png"
									title="logo" alt="logo">
							</a></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>
								<table width="95%" border="0" align="center" cellpadding="0"
									cellspacing="0"
									style="max-width: 670px; background: #fff; border-radius: 3px; text-align: center; -webkit-box-shadow: 0 6px 18px 0 rgba(0, 0, 0, .06); -moz-box-shadow: 0 6px 18px 0 rgba(0, 0, 0, .06); box-shadow: 0 6px 18px 0 rgba(0, 0, 0, .06);">
									<tr>
										<td style="height: 40px;">&nbsp;</td>
									</tr>
									<tr>
										<td style="padding: 0 35px;">
											<h1
												style="color: #1e1e2d; font-weight: 500; margin: 0; font-size: 32px; font-family: 'Rubik', sans-serif;">You
												have requested to reset your password</h1> <span
											style="display: inline-block; vertical-align: middle; margin: 29px 0 26px; border-bottom: 1px solid #cecece; width: 100px;"></span>
											<p
												style="color: #455056; font-size: 15px; line-height: 24px; margin: 0;">
												We cannot simply send you your old password. A unique link
												to reset your password has been generated for you. To reset
												your password, Enter your registered email Address and
												follow the instructions.
											<div class="form__group field">
												<input style="text-align: center; margin-left: 139px;"
													type="email" class="form__field"
													placeholder="Email Address" name="name" id='name'
													required="required" />

											</div> <a href="/reset"
											style="background: #20e277; text-decoration: none !important; font-weight: 500; margin-top: 35px; color: #fff; text-transform: uppercase; font-size: 14px; padding: 10px 24px; display: inline-block; border-radius: 50px;"
											type="submit">Reset Password</a>
										</td>
									</tr>
									<tr>
										<td style="height: 40px;">&nbsp;</td>
									</tr>
								</table>
							</td>
						<tr>
							<td style="height: 20px;">&nbsp;</td>
						</tr>

					</table>
				</form>
			</td>
		</tr>
	</table>
	<!--/100% body table-->
</body>
</html>