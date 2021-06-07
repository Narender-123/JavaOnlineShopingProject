<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body>
<%
try{
Connection con = ConnectionProvider.getCon();
Statement smt=con.createStatement();
ResultSet rs=smt.executeQuery("Select * From users Where email='"+email+"'");
if(rs.next()){
%>
<h3>Name:<%= rs.getString(1) %></h3>
<hr>
 <h3>Email:<%= rs.getString(2) %> </h3>
 <hr>
 <h3>Mobile Number: <%= rs.getString(3) %></h3>
 <hr>
<h3>Security Question: <%= rs.getString(4) %></h3>
<hr>
      <br>
      <br>
      <br>

<%
}}catch(Exception ae){
	ae.printStackTrace();
}
%>
</body>
</html>