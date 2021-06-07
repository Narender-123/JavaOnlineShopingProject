<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email= session.getAttribute("email").toString();
String newAnswer = request.getParameter("newAnswer");
String securityQuestion = request.getParameter("securityQuestion");
String password = request.getParameter("password");
System.out.println(password);
int check=0;
try{
	Connection con= ConnectionProvider.getCon();
	Statement smt=con.createStatement();
	//First we check the if the Users exists on the basis of the pasword the user put in the Field
	ResultSet rs=smt.executeQuery("Select * From Users where email='"+email+"' and password='"+password+"'");
	while(rs.next())
	{
		//After the User Exists we confirm by setting check=1;
		check=1;
		smt.executeUpdate("Update users set securityQuestion='"+securityQuestion+"', answer='"+newAnswer+"' where email='"+email+"'");
		response.sendRedirect("changeSecurityQuestion.jsp?msg=done");
	}
	
	//Even after all this if check=0 i.e password is incorrect
	if(check==0)
	{
		response.sendRedirect("changeSecurityQuestion.jsp?msg=wrong");
	}
	
}catch(Exception ae){
	ae.printStackTrace();
}
%>