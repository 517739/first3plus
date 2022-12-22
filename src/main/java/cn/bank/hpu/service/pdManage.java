package cn.bank.hpu.service;

import java.sql.*;

import cn.bank.hpu.model.product;
import cn.bank.hpu.model.user;

public class pdManage {
	
	public boolean change(product p) {
		
		boolean flag = false;
		Connection conn = cn.bank.hpu.util.DataConner.getConnection();
		PreparedStatement pst = null;
		String sql = "update products set Type=?,PNO=?,Pname=?,detail=? where Pname = '"+p.getPname()+"'";
		try {
			
			pst = conn.prepareStatement(sql);
			pst.setString(1, p.getType());
			pst.setString(2, p.getPNO());
			pst.setString(3, p.getPname());
			pst.setString(4, p.getdetail());
			
			
			int row = pst.executeUpdate();
			if(row>0)flag=true;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			cn.bank.hpu.util.DataConner.close(pst, conn);
		}

		return flag;
	}
	
	public boolean Buy(String juser,double price,String quantity)
	{	
		boolean flag = false;
		Connection conn = cn.bank.hpu.util.DataConner.getConnection();
		PreparedStatement pst = null;
		double qt = Double.parseDouble(quantity);
		double ans = price * qt;     //计算总价格
		String sql = "update mff set balance = balance - "+ans+" where juser = '"+juser+"'";
		try {
			
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
	
	public double getprice(product p)
	{
		boolean flag = false;
		double pr = 0;
		Connection conn = null;
		Statement st =null;
		ResultSet rs = null;
		String sql ="select * from products where Pname = '"+p.getPname()+"'";
		conn = cn.bank.hpu.util.DataConner.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				pr = rs.getDouble("price");	
			}
			pr = rs.getDouble("price");
			if(pr > 0 )flag = true;		
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			cn.bank.hpu.util.DataConner.close(rs,st, conn);
		}
		return pr;
	}
	
}
