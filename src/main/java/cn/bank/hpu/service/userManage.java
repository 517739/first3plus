package cn.bank.hpu.service;
 
import cn.bank.hpu.model.user;
 
public interface userManage{
	
	public boolean add(user u);
	public boolean checkLogin(String name,String password);
	boolean Trade(String host, String name, double money);
	double getmoney(user u);
	boolean change(user u);
	user geteverything(String username);
	double getpermition(user u);
	boolean InsertRecord(String hostname, String targetname, String money);
	
}