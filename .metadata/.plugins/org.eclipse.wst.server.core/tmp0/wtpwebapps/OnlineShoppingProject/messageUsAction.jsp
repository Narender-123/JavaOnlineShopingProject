<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email = session.getAttribute("email").toString();
String subject = request.getParameter("subject");
String body = request.getParameter("body");

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps= con.prepareStatement("Insert Into message(email,subject,body) Values(?,?,?)");
	ps.setString(1, email);
	ps.setString(2, subject);
	ps.setString(3, body);
	ps.executeUpdate();
	response.sendRedirect("messageUs.jsp?msg=valid");
}catch(Exception ae){
	ae.printStackTrace();
	response.sendRedirect("messageUs.jsp?msg=invalid");
}

%>