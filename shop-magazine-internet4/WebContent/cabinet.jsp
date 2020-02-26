<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cabinet</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h1>Welcome to the cabinet ${cookie.userFirstName.value}</h1>
	<div class="container-fluid">
		<div class="row">
			<div id="productCards"></div>

		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/cabinet.js"></script>
</body>
</html>