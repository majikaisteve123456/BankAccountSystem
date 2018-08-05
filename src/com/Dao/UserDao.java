package com.Dao;
import java.util.*;
import com.Bean.*;
import com.DBUtil.*;


import java.sql.*;
public class UserDao {
   //µÇÂ¼
	public boolean checkUser(User user)
	{
		Connection conn=DataBaseUtil.getConnection();
		try {
			String sql="select password from user where username=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, user.getusername());
			ResultSet rs=ps.executeQuery();	
			if(!rs.next())
			{
				System.out.println(rs.getString(1));
				return false;
			}
			else {
				if(rs.getString("password").equals(user.getpassword())) {
					return true;
				}
			}
			rs.close();
			ps.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		finally {
			DataBaseUtil.closeConnection(conn);
		}
		   return false;
	}
	
	public boolean isExisted(User user)
	{
		Connection conn=DataBaseUtil.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from user where username=? and password=?");
			ps.setString(1, user.getusername());
			ps.setString(2, user.getpassword());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				return true;
			}
			rs.close();
			ps.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		finally {
			DataBaseUtil.closeConnection(conn);
		}
		   return false;
	}
	
	public double getBalance(String username)
	{
		Connection conn=DataBaseUtil.getConnection();
		BankAccount account=null;
		double balance=0;
		try {
			
			PreparedStatement ps=conn.prepareStatement("select balance from account where username=?");
			ps.setString(1, username);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				 balance=(double)rs.getDouble("balance");
			}
			rs.close();
			ps.close();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		finally {
			DataBaseUtil.closeConnection(conn);
		}
		return  balance;
	}
	
	public void deposit(BankAccount account,double amount)
	{
		Connection conn=DataBaseUtil.getConnection();
		try
		{
			String sql="update account set balance=? where username=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setDouble(1,account.getbalance()+amount);
			ps.setString(2,account.getusername());
			ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			DataBaseUtil.closeConnection(conn);
		}
	}	
	public void register(User user)
	{
		Connection conn=DataBaseUtil.getConnection();
		try
		{
			String username=user.getusername();
			String password=user.getpassword();
			String sql1="insert into user values (?,?)";
		    PreparedStatement ps1=conn.prepareStatement(sql1);
		    ps1.setString(1, username);
            ps1.setString(2, password);
            ps1.executeUpdate();
		    String sql2="insert into account values (?,?)";
		    PreparedStatement ps2=conn.prepareStatement(sql2);
		    ps2.setString(1, username);
		    ps2.setDouble(2, 0);
		    ps2.executeUpdate();
		}
		catch(Exception e)
		{
		   e.printStackTrace();	
		}
		finally
		{
			DataBaseUtil.closeConnection(conn);
		}
	}

	public void withdraw(BankAccount account,double amount)
	{
		Connection conn=DataBaseUtil.getConnection();
		try
		{
			String sql="update account set balance=? where username=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setDouble(1,account.getbalance()-amount);
			ps.setString(2,account.getusername());
			ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			DataBaseUtil.closeConnection(conn);
		}
	}	
}
