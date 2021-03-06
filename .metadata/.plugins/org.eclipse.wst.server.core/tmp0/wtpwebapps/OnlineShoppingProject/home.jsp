<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
	<div style="color: white; text-align: center; font-size: 30px;">
		Home <i class="fa fa-institution"></i>
	</div>
	<%
		String msg = request.getParameter("msg");
		if ("added".equals(msg)) {
	%>
	<h3 class="alert">Product added successfully!</h3>
	<%
		}
	%>
	<%
		if ("exist".equals(msg)) {
	%>
	<h3 class="alert">Product already exist in you cart! Quantity
		increased!</h3>
	<%
		}
	%>

	<%
		if ("invalid".equals(msg)) {
	%>
	<h3 class="alert">Something Went Wrong Try again!</h3>
	<%
		}
	%>

	<div class="container bg-light rounded">
		<div class="row">
			<div class="col-lg-12">
				<div class="h4 font-weight-bold text-center py-3">Product
					Catalog</div>
			</div>
			<%
				try {
					Connection con = ConnectionProvider.getCon();
					Statement smt = con.createStatement();
					ResultSet rs = smt.executeQuery("Select * From Product where active = 'Yes'");
					while (rs.next()) {
			%>
			<div class="col-lg-3 col-md-6 my-lg-0 my-3">
				<div class="box bg-white">
					<div class="d-flex align-items-center">
						<div class="rounded-circle mx-3 text-center d-flex align-items-center justify-content-center blue">
							<a href="images/<%=rs.getString(6)%>" class="thumbnail">
								<p><%=rs.getString(2)%></p> <img
								src="images/<%=rs.getString(6)%>"
								style="height: 200px; width: 150px;" />
								<p>
									<i class="fa fa-inr"> </i>
									<%=rs.getString(4)%>
								</p>
							</a>
							<a href="addToCartAction.jsp?id=<%=rs.getString(1)%>" class="d-flex">Add to
								cart <i class='fas fa-cart-plus'></i>
							</a> 
						</div>
					</div>
				</div>
			</div>

			<br>
			<br>
			<br>
			<%
				}
				} catch (Exception ae) {
					ae.printStackTrace();
				}
			%>
		</div>
	</div>
	<br>
	<br>
	<br>

</body>
</html>