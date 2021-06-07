<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*" %>

<%
//String email=session.getAttribute("email");
String email = request.getParameter("email");
String id = request.getParameter("id");
String status = "Cancel";
try{
	Connection con = ConnectionProvider.getCon();
	Statement smt=con.createStatement();
	smt.executeUpdate("Update Cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is Not Null");
	response.sendRedirect("ordersReceived.jsp?msg=cancel");
}catch(Exception ae){
	ae.printStackTrace();
	response.sendRedirect("ordersReceived.jsp?msg=wrong");
}
%>