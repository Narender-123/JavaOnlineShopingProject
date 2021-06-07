<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email = session.getAttribute("email").toString();
String id = request.getParameter("id");
String incdec = request.getParameter("quantity");
System.out.println(incdec);
int price = 0;
int total = 0;
int quantity = 0;
int final_total = 0;
 
try
{
	Connection con = ConnectionProvider.getCon();
	Statement smt = con.createStatement();
// 	Here we have to get present status of the cart by using the email and the product id as parameter to search the record
	ResultSet rs = smt.executeQuery("Select * From Cart where email='"+email+"' and product_id = '"+id+"' and address is Null");
	while(rs.next()){
		price = rs.getInt(4);
		total = rs.getInt(5);
		quantity = rs.getInt(3);
	}
	if(quantity==1 && "dec".equals(incdec))
		response.sendRedirect("myCart.jsp?msg=notPossible");
	else if(quantity!=1 && "dec".equals(incdec))
	{
		total = total - price;
		quantity = quantity -1;
		smt.executeUpdate("Update Cart Set total='"+total+"', quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address is Null");
		response.sendRedirect("myCart.jsp?msg=dec");
	}
	else
	{
		total = total + price;
		quantity = quantity + 1;
		smt.executeUpdate("Update Cart Set total='"+total+"', quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address is Null");
		response.sendRedirect("myCart.jsp?msg=inc");
	}
}catch(Exception ae){
	System.out.println(ae);
}
%>