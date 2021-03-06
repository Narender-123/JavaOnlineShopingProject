<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>

<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css"> 
<title>Add New Product</title>
<style>
.back {
	color: white;
	margin-left: 2.5%
}
</style>
</head>
<body>
	<h2>
		<a class="back" href="allProductEditProduct.jsp"><i
			class='fas fa-arrow-circle-left'> Back</i></a>
	</h2>

	<%
		String id = request.getParameter("id");
		try {
			Connection con = ConnectionProvider.getCon();
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("Select * From product where Id = '" + id + "'");
			if (rs.next()) {
	%>



	<form action="editProductAction.jsp" method="post">
		<input type="hidden" name="id" value="<%=id%>">
		<div class="row">
			<div class="form-group col-md-6">
				<label for="name">Enter Name</label> <input class="form-control"
					type="text" name="name" value="<%=rs.getString(2)%>" required />
				<hr>
			</div>

			<div class="form-group col-md-6">
				<label for="category">Enter Category</label> <input
					class="form-control" type="text" name="category"
					value="<%=rs.getString(3)%>" required />
				<hr>
			</div>
		</div>

		<div class="row">
			<div class="form-group col-md-6">
				<label for="price">Enter Price</label> <input class="form-control"
					type="number" name="price" value="<%=rs.getString(4)%>" required />
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
				class="form-control" name="image" id="image" required>
			<hr>
		</div>
		
		<button class="button btn-primary">
			Save<i class='far fa-arrow-alt-circle-right'></i>
		</button>
		
		
<!-- 		<div class="form-group offset-md-2 col-md-8"> -->
<!-- 			<button class="button form-control"> -->
<!-- 				<i class='far fa-arrow-alt-circle-right'>Save</i> -->
<!-- 			</button> -->
<!-- 		</div> -->

		

	</form>
	<%
		}
		} catch (Exception ae) {
			System.out.print(ae);
		}
	%>
	<!-- </div> -->
</body>


<br>
<br>
<br>
</body>
</html>