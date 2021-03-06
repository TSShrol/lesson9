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
	<div class="container-fluid single-product">
          <div class="row">
    <div class="card">
				<div class="card-body">
					<h5 class="card-title">${product.name}</h5>
					<h6 class="card-subtitle mb-2 text-muted">${product.price}</h6>
					<p class="card-text">${product.description}</p>
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#buyProductModal">buy product</button>
				</div>
			</div>

        
      </div>
     </div>
	<!-- Modal -->
	<div class="modal fade" id="buyProductModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirmation</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					Are You sure that You want to buy this product?
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cancel</button>
					<button type="button" product-id="${product.id}"  class="btn btn-primary buy-product">Buy</button>
				</div>
			</div>
		</div>
	</div>

	
<jsp:include page="footer.jsp"></jsp:include>
<script src="js/cabinet.js"></script>
<script src="js/serverCalls.js"></script>
</body>
</html>