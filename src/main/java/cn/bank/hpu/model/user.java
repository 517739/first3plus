package cn.bank.hpu.model;
public class user{
	
	protected String name;
	protected String password;
	protected String sname;
	protected String age;
	protected String iden;
	protected double banlance=0;
	
	
	public String getName() {return name;}
	public String getsname() {return sname;}
	public String getage() {return age;}
	public String getiden() {return iden;}
	public String getPassword() {return password;}
	
	public void setName(String name) {this.name = name;}
	public void setPassword(String password) {this.password = password;}
	public void setsname(String sname) {this.sname = sname;}
	public void setage(String age) {this.age = age;}
	public void setiden(String iden) {this.iden = iden;}
	public void setbalance(double X) {this.banlance = X;}
	
	public void in(double x) {this.banlance=this.banlance+x;}
	public void out(double x) {this.banlance=this.banlance+x;}
}