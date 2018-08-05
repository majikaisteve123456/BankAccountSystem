package com.DBUtil;
import java.sql.*;
public class DataBaseUtil {
	
	public static Connection getConnection()
	{
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		  String url="jdbc:mysql://localhost:3306/bank";
		  conn = DriverManager.getConnection(url, "root", "123456");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void closeConnection(Connection conn)
	{
		if(conn != null){
            try {
                conn.close();   // 关闭数据库连接
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
