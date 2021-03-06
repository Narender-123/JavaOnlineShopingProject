<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<!--All the Utility CDN-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<!--All the Utility CDN-->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="css/Catalog.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


</head>
<!--Header-->
<br>
<div >

	<%
		String email = session.getAttribute("email").toString();
	%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<img src="images/logo.png" style="height: 80px; width: 120px" />
		<h4 >
			<a href="" style="color: yellow"><%=email%> <i class='fas fa-user-alt'></i></a>
		</h4>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a href="home.jsp" class="nav-link">Home<i
						class="fa fa-institution"></i></a></li>
				<li class="nav-item"><a href="myCart.jsp" class="nav-link">My
						Cart<i class='fas fa-cart-arrow-down'></i>
				</a></li>
				<li class="nav-item"><a href="myOrders.jsp" class="nav-link">My
						Orders <i class='fab fa-elementor'></i>
				</a></li>
				<li class="nav-item"><a href="changeDetails.jsp"
					class="nav-link">Change Details <i
						class="fa fa-edit"></i></a></li>
				<li class="nav-item"><a href="messageUs.jsp" class="nav-link">Message
						Us <i class='fas fa-comment-alt'></i>
				</a></li>
				<li class="nav-item"><a href="about.jsp" class="nav-link">About
						<i class="fa fa-address-book"></i>
				</a></li>
				<li class="nav-item"><a href="logout.jsp" class="nav-link">Logout
						<i class='fas fa-share-square'></i>
				</a></li>
			</ul>
		</div>

		<div class="search-container">
			<form action="searchHome.jsp" method="post">
				<input type="text" name="search" placeholder="search">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
			</form>
		</div>
	</nav>

</div>
<br>
<!--table-->

<!-- <a href="home.jsp">Home<i class="fa fa-institution"></i></a>
            <a href="myCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
            <a href="myOrders.jsp">My Orders  <i class='fab fa-elementor'></i></a>
            <a href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a>
            <a href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a> -->