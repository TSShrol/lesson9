<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/login.css">


<title>Shop-magazine</title>
</head>
<body>

	<div class="login-page">
		<div class="form">
			<form class="register-form">
				<input class="firstName" type="text" placeholder="first name" />
				<input class="lastName" type="text" placeholder="last name" /> 
				<input class="email" type="text" placeholder="email address" /> 
				<input class="password" type="password" placeholder="password" /> 
				<input class="cpassword" type="password" placeholder="confirm password" />

				<button class="register">create</button>

				<p class="message">
					Already registered? <a href="#">Sign In</a>
				</p>
			</form>
			<form class="login-form">
				<input class="email" type="text" placeholder="email address" /> 
				<input class="password" type="password" placeholder="password" />
				<button class="login">login</button>
				<p class="message">
					Not registered? <a href="#">Create an account</a>
				</p>
			</form>
		</div>
		<div class="alert alert-success alert-dismissible fade show"
			role="alert">
			<b>Success!</b> You are registered.
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>

	
</body>
</html>

