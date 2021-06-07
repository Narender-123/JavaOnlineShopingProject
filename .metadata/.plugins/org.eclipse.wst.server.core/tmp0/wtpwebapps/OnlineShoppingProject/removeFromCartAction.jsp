<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email = session.getAttribute("email").toString();
String product_id = request.getParameter("id");
 try{
	 
	 Connection con = ConnectionProvider.getCon();
	 Statement smt = con.createStatement();
	 smt.executeUpdate("Delete From Cart where email='"+email+"' and product_id='"+product_id+"' and address is Null");
	 response.sendRedirect("myCart.jsp?msg=removed");
	 
 }catch(Exception ae){
	 System.out.println(ae);
 }
%>
