<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement smt = con.createStatement();
	
	//The Query to Create a Table Called Users
	//String q1="create table users(name varchar(100),email varchar(100)primary key,mobileNumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	//smt.execute(q1);
	
	//The Query to Create a Table Called Product
	//String q2 = "Create Table Product(Id int, name varchar(500), Category varchar(200), Price int, Active varchar(10))";
	//smt.execute(q2);
	
	//The Query to Create a Table Called Cart
	//String q3 = "Create table cart(email varchar(100), product_id int, quantity int, price int, total int, address varchar(500), city varchar(100), state varchar(100), country varchar(100), mobileNumber bigInt, orderDate varchar(100), deliveryDate varchar(100), paymentMethod varchar(100), transactionId varchar(100), status varchar(100))";
	//smt.execute(q3);
	
	//The Query to Create a Table for Storing the Messages 
	String q4="Create Table message(id int AUTO_Increment, email varchar(100), subject varchar(200), body varchar(1000), PRIMARY KEY(id))";
	smt.execute(q4);
	System.out.println("Table Created");
	con.close();
}catch(Exception e){
	System.out.println(e);
}
%>
    
    
    
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="ISO-8859-1"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->

<!-- </body> -->
<!-- </html> -->