<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*" %>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
String price = request.getParameter("price");
String active = request.getParameter("active");
String image= request.getParameter("image");

try{
	Connection con = ConnectionProvider.getCon();
	//PreparedStatement ps = con.prepareStatement("Insert into product ");
	Statement smt = con.createStatement();
	smt.executeUpdate("Update product set name='"+name+"', category='"+category+"', price='"+price+"', active='"+active+"', image='"+image+"' where Id="+id);
	if(active.equals("No"))
	{
		//In that case we had to remove this produtc from their cart by using Product_id in their cart
		smt.executeUpdate("Delete from cart Where product_id ='"+id+"' and address Is NULL");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");	
}catch(Exception ae){
	ae.printStackTrace();
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>