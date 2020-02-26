<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<style>
.createProduct {
	position: absolute;
	left: 40%;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<form class="createProduct">
				<div class="form-group">
					<label for="productName">Name Product</label> <input type="text"
						class="form-control productName" placeholder="Enter product name">

				</div>
				<div class="form-group">
					<label for="productDescription">Description</label> <input
						type="text" class="form-control productDescription"
						placeholder="Enter product description">
				</div>
				<div class="form-group">
					<label for="productPrice">Price</label> <input type="text"
						class="form-control productPrice"
						placeholder="Enter product price">
				</div>
				<button type="submit" class="btn btn-success createProduct">Save
					Product</button>
			</form>

		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/serverCalls.js"></script>
</body>
</html>