<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");

if("admin@gmail.com".equals(email) && "admin".equals(password)){
	//We have to ser the Session for this Email
	session.setAttribute("email",email);
	response.sendRedirect("admin/adminHome.jsp");
}else{
	//This Variable tells the User is Found or not
	int z = 0;
	try{
		Connection con = ConnectionProvider.getCon();
		Statement smt = con.createStatement();
		ResultSet rs = smt.executeQuery("Select * From Users where email = '"+email+"' and password = '"+password+"'");
		while(rs.next()){
			z = 1;
			session.setAttribute("email",email);
			response.sendRedirect("home.jsp");
		}
		if(z == 0) response.sendRedirect("login.jsp?msg=notFound");
	}catch(Exception ex){
		ex.printStackTrace();
		response.sendRedirect("login.jsp?msg=invalid");
	}
}
%>