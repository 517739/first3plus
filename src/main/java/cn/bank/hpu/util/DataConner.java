package cn.bank.hpu.util;

import java.sql.*;

public class DataConner{
	
	private static String driver = "com.mysql.cj.jdbc.Driver";
	private static String url = "jdbc:mysql://120.46.220.20:3306/first?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	private static String username = "lingdu";
	private static String password = "123456";
	
	//import driver
	static { 	
		try {
			Class.forName(driver);
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	//create connection object
	public static Connection getConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url,username,password);
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return conn;
	}
	
	//shut the stream
	public static void close(ResultSet rs,Statement st,Connection conn) {
		try {
			
				if(rs!=null)rs.close();
				if(st!=null)st.close();
				if(conn!=null)conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(PreparedStatement pst,Connection conn) {
			close(null,pst,conn);
	}
}