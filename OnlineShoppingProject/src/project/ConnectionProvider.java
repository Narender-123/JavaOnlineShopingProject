package project;

import java.sql.*;

public class ConnectionProvider {
	
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","");
			return con;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
//	public static void main(String args[]) {
//		Connection con= getCon();
//		try {
//			System.out.println("Connection is Suessfull=> Driver Name: "+con.getMetaData().getDriverName());
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
}
