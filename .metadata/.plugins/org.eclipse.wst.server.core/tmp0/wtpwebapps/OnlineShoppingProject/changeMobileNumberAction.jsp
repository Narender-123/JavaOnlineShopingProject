<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email = session.getAttribute("email").toString();
String mobileNumber= request.getParameter("mobileNumber");
String password= request.getParameter("password");
int check=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement smt=con.createStatement();
	ResultSet rs=smt.executeQuery("Select * From Users Where email='"+email+"' and password='"+password+"'");
	while(rs.next())
	{
		check=1;
		smt.executeUpdate("Update Users Set mobileNumber='"+mobileNumber+"' where email='"+email+"'");
		response.sendRedirect("changeMobileNumber.jsp?msg=done");
	}
	
	if(check==0)
	{
		response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
	}
}catch(Exception ae){
	ae.printStackTrace();
}
%>