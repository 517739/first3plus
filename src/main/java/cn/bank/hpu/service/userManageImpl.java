package cn.bank.hpu.service;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

import cn.bank.hpu.util.Number;
import cn.bank.hpu.model.user;
import jakarta.servlet.http.HttpSession;

//add->register
public class userManageImpl implements userManage {
	@Override
	public boolean add(user u) {
		
		boolean flag = false;
		Connection conn = cn.bank.hpu.util.DataConner.getConnection();
		PreparedStatement pst = null;
		String sql = "insert into mff(juser,jpass,姓名,年龄,身份证号,balance)values(?,?,?,?,?,?)";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, u.getName());
			pst.setString(2, u.getPassword());
			pst.setString(3, u.getsname());
			pst.setString(4, u.getage());
			pst.setString(5, u.getiden());
			pst.setDouble(6, 0);
			
			int row = pst.executeUpdate();
			if(row>0)flag=true;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			cn.bank.hpu.util.DataConner.close(pst, conn);
		}

		return flag;
	}
	
	@Override
	public boolean change(user u) {
		
		boolean flag = false;
		Connection conn = cn.bank.hpu.util.DataConner.getConnection();
		PreparedStatement pst = null;
		String sql = "update mff set juser=?,jpass=?,姓名=?,年龄=?,身份证号=? where juser = '"+u.getName()+"'";
		try {
			
			pst = conn.prepareStatement(sql);
			pst.setString(1, u.getName());
			pst.setString(2, u.getPassword());
			pst.setString(3, u.getsname());
			pst.setString(4, u.getage());
			pst.setString(5, u.getiden());
			
			
			int row = pst.executeUpdate();
			if(row>0)flag=true;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			cn.bank.hpu.util.DataConner.close(pst, conn);
		}

		return flag;
	}
	

	@Override
	public boolean checkLogin(String name,String password)
	{
		boolean flag = false;
		Connection conn = null;
		Statement st =null;
		ResultSet rs = null;
		String sql ="select * from mff where juser = '"+name+"'";
		conn = cn.bank.hpu.util.DataConner.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				if(rs.getString("jpass").equals(password))flag = true;		
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			cn.bank.hpu.util.DataConner.close(rs,st, conn);
		}
		return flag;
	}
	
	@Override
	public boolean Trade(String host,String name,double money)
	{
		boolean flag = false;
		Connection conn = cn.bank.hpu.util.DataConner.getConnection();
		PreparedStatement pst = null;
		String sql ="update mff set balance = balance - "+money+" where juser = '"+host+"'";
		try {
			
			pst = conn.prepareStatement(sql);
			int row = pst.executeUpdate();
			if(row>0)flag=true;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			cn.bank.hpu.util.DataConner.close(pst, conn);
		}
		sql ="update mff set balance = balance + "+money+" where juser = '"+name+"'";
		try {
		    conn = cn.bank.hpu.util.DataConner.getConnection();
			pst = conn.prepareStatement(sql);
			int row = pst.executeUpdate();
			if(row>0)flag=true;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			cn.bank.hpu.util.DataConner.close(pst, conn);
		}
		
		return flag;
	}
	
	@Override
	public double getmoney(user u)
	{
		boolean flag = false;
		double mo = 0;
		Connection conn = null;
		Statement st =null;
		ResultSet rs = null;
		String sql ="select * from mff where juser = '"+u.getName()+"'";
		conn = cn.bank.hpu.util.DataConner.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				mo = rs.getDouble("balance");	
			}
			mo = rs.getDouble("balance");
			if(mo > 0 )flag = true;		
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			cn.bank.hpu.util.DataConner.close(rs,st, conn);
		}
		return mo;
	}
	
	
	@Override
	public user geteverything(String username)
	{
		user ux=new user();
		Connection conn = null;
		Statement st =null;
		ResultSet rs = null;
		String sql ="select * from mff where juser = '"+username+"'";
		conn = cn.bank.hpu.util.DataConner.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				 ux.setName(rs.getString("juser"));
				 ux.setsname(rs.getString("姓名"));
				 ux.setage(rs.getString("年龄"));
				 ux.setiden(rs.getString("身份证号"));
				 ux.setbalance(rs.getDouble("balance"));
			}	
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			cn.bank.hpu.util.DataConner.close(rs,st, conn);
		}
		return ux;
	}
	
	@Override
	public double getpermition(user u)
	{
		boolean flag = false;
		double mo = 0;
		Connection conn = null;
		Statement st =null;
		ResultSet rs = null;
		String sql ="select * from mff where juser = '"+u.getName()+"'";
		conn = cn.bank.hpu.util.DataConner.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				mo = rs.getDouble("permition");	
			}
			mo = rs.getDouble("permition");
			if(mo > 0 )flag = true;		
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			cn.bank.hpu.util.DataConner.close(rs,st, conn);
		}
		return mo;
	}
	
	@Override
	public boolean InsertRecord(String hostname, String targetname, String money)
	{
		boolean flag = false;
		String mo = null;
		
		SimpleDateFormat times = new SimpleDateFormat("HH:mm");
		String time = times.format(new Date());
		
		Connection conn = null;
		Statement st =null;
		ResultSet rs = null;
		String sql ="select * from records order by 流水单号 desc limit 1";
		conn = cn.bank.hpu.util.DataConner.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				mo = rs.getString("流水单号");	
			}
			mo = rs.getString("流水单号");	
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		String num = Number.getRecord(mo);
		
		PreparedStatement pst = null;
		sql = "insert into records(流水单号,交易时间,付款方,收款方,交易金额)values(?,?,?,?,?)";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, num);
			pst.setString(2, time);
			pst.setString(3, hostname);
			pst.setString(4, targetname);
			pst.setString(5, money);
			
			
			int row = pst.executeUpdate();
			if(row>0)flag=true;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			cn.bank.hpu.util.DataConner.close(pst, conn);
		}
		
		return flag;
	}
}
