<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*" %>

<%
String id= request.getParameter("id");
String name= request.getParameter("name");
String category= request.getParameter("category");
String price= request.getParameter("price");
String active= request.getParameter("active");
String image= request.getParameter("image");

System.out.println(image);
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("Insert into Product Values(?,?,?,?,?,?)");
	
	//Now we have to set the Values Herer to Insert
	ps.setString(1, id );
	ps.setString(2, name);
	ps.setString(3, category);
	ps.setString(4, price);
	ps.setString(5, active);
	ps.setString(6, image);

	
	//Now we have to exceute it
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
}catch(Exception ae){
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
	ae.printStackTrace();
}

%>