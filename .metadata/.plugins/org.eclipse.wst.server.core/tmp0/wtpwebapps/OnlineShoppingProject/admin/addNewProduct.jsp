<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>

<html>
<head>

<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
</head>
<body style="font-family: Times New Roman">
	<%
		String msg = request.getParameter("msg");
		if ("done".equals(msg)) {
	%>
	<h3 class="alert">Product Added Successfully!</h3>
	<%
		}
	%>

	<%
		if ("wrong".equals(msg)) {
	%>
	<h3 class="alert">Some thing went wrong! Try Again!</h3>
	<%
		}
	%>
	<%
		//In Case the product ids the only item to be Added i.e we assume the first product is having id=1
		int id = 1;
		try {
			Connection con = ConnectionProvider.getCon();
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("Select max(Id) From Product");
			if (rs.next()) {
				id = rs.getInt(1) + 1;
			}
		} catch (Exception ae) {
			ae.printStackTrace();
		}
	%>

	<form action="addNewProductAction.jsp" method="post">
		<h3 style="color: yellow;">
			Product ID:<%=id%>
		</h3>
		<input type="hidden" name="id" value="<%=id%>">

		<div class="row">
			<div class="form-group col-md-6">
				<label for="name">Enter Name</label> <input class="form-control"
					type="text" name="name" required />
				<hr>
			</div>

			<div class="form-group col-md-6">
				<label for="category">Enter Category</label> <input
					class="form-control" type="text" name="category" required />
				<hr>
			</div>
		</div>

		<div class="row">
			<div class="form-group col-md-6">
				<label for="price">Enter Price</label> <input class="form-control"
					type="number" name="price" required />
				<hr>
			</div>

			<div class="form-group col-md-6">
				<label for="active">Select Active</label> <select
					class="form-control" name="active">
					<option value="Yes">Yes</option>
					<option value="No">No</option>
				</select>
				<hr>
			</div>
		</div>

		<div class="form-group offset-md-1 col-md-10">
			<label for="image">Pick an image</label> <input type="file"
				class="form-control" name="image" id="image">
			<hr>
		</div>

		<button class="button btn-primary">
			Save<i class='far fa-arrow-alt-circle-right'></i>
		</button>
	</form>
</body>
<br>
<br>
<br>
</body>
</html>