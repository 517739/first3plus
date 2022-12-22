package cn.bank.hpu.test;

import cn.bank.hpu.model.*;
import cn.bank.hpu.service.*;
import cn.bank.hpu.servlet.Tss;

public class test_index {
	public static void main(String[] args) {
		
		userManage um =new userManageImpl();
		boolean flag = um.InsertRecord("yjr", "cyz", "213");
		/*user u = new user();
		u.setName("yjr");
		u.setPassword("65321");
		u.setsname("yuanjiarui");
		u.setage("280");
		u.setiden("370000X");
		userManage um =new userManageImpl();
		boolean flag = um.change(u);*/
		
		/*userManage um =new userManageImpl();
		boolean flag=um.Trade("yjr", "cyz", 100);
		user u = new user();
		u.setName("yjr");
		u.setPassword("123456");
		boolean flag = um.add(u);*/
		if(flag)System.out.println("insert success!");
		else {
			 System.out.println("fail to insert!");
		}
		
	}
}