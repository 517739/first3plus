package cn.bank.hpu.servlet;

import cn.bank.hpu.model.user;
import cn.bank.hpu.service.*;

public class Tss {
	public boolean tests(user u)
	{
		userManage um = new userManageImpl();
		boolean flag = um.add(u);
		if(flag)
		{
			System.out.println("insert success!");
			return true;
		}
		else 
		{
			 System.out.println("fail to insert!");
			 return false;
		}

	
	}

}
