package cn.bank.hpu.test;

import java.sql.Connection;

public class Test_DataConner{
	public static void main(String[] args) {
		Connection conn = cn.bank.hpu.util.DataConner.getConnection();
		if(conn!=null)System.out.print("connet success!");
		else System.out.print("fail to connet!");
	}
}