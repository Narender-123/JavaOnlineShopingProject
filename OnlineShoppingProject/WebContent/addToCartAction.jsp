<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email = session.getAttribute("email").toString();
String product_id = request.getParameter("id");

//Here we set Some of the Default Values For the Cart
int quantity = 1;
int product_price = 0;
int product_total = 0;
int cart_total = 0;

//Here z = 0 repersents the Product doesnt exists in the Cart table and we have to Create in the Cart (z = 1 ViceVersa) 
int z = 0;
try{
	Connection con =  ConnectionProvider.getCon();
	Statement smt = con.createStatement();
	ResultSet rs = smt.executeQuery("Select * From product where id = '"+product_id+"'");
	//if we get a product(i.e product information) of the same Id 
	while(rs.next())
	{
		product_price = rs.getInt(4);
		product_total = product_price;
	}
	
	//Now we have to reterive the Information about a particular existing product from the Cart for this Logged in User where the Order is not Placed yet if its placed then we had to create a new record for that product 
	//Here Address is Null repersents the Order is Placed or not 
	//This is for existing product
	ResultSet rs1 = smt.executeQuery("Select * From Cart Where product_id='"+product_id+"' and email = '"+email+"' and address is Null");
	while(rs1.next()){
		cart_total = rs1.getInt(5);
		cart_total = cart_total + product_total;
		
		quantity = rs1.getInt(3);
		quantity += 1;
		
		z = 1;
	}
	if(z==1)
	{
		smt.executeUpdate("Update cart set total='"+cart_total+"', quantity='"+quantity+"' Where product_id='"+product_id+"' and email = '"+email+"' and address is Null");
		response.sendRedirect("home.jsp?msg=exist");
	}
	if(z==0)
	{
		PreparedStatement ps = con.prepareStatement("Insert into Cart(email,product_id,quantity,price,total) Values(?,?,?,?,?)");
		
		ps.setString(1, email);
		ps.setString(2, product_id);
		ps.setInt(3, quantity);
		ps.setInt(4, product_price);
		ps.setInt(5, product_total);
		ps.executeUpdate();
		response.sendRedirect("home.jsp?msg=added");
	}
	
}catch(Exception ae){
	System.out.println(ae);
	response.sendRedirect("home.jsp?msg=invalid");
}
%>