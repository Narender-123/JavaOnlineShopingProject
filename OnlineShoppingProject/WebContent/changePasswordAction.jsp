<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email=session.getAttribute("email").toString();
String oldPassword = request.getParameter("oldPassword");
String newPassword = request.getParameter("newPassword");
String confirmPassword = request.getParameter("confirmPassword");

if(!newPassword.equals(confirmPassword))
{
	response.sendRedirect("changePassword.jsp?msg=notMatch");
}
else{
	//this will represents paasword is matched or not
	int check=0;
	try{
		Connection con=ConnectionProvider.getCon();
		Statement smt=con.createStatement();
		ResultSet rs=smt.executeQuery("Select * From Users where password='"+oldPassword+"' and email='"+email+"'");
		while(rs.next())
		{
			check = 1;
			smt.executeUpdate("Update Users Set password='"+newPassword+"' where email='"+email+"'");
			response.sendRedirect("changePassword.jsp?msg=done");
		}
		if(check==0){
			response.sendRedirect("changePassword.jsp?msg=wrong");
		}
		response.sendRedirect("home.jsp");
	}catch(Exception ae){
		//response.sendRedirect("changePassword.jsp?msg=invalid");
		System.out.println(ae);
				ae.printStackTrace();
	}
}
%>