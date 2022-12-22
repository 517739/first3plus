package cn.bank.hpu.model;

public class product {
	
	protected String Type;
	protected String PNO;
	protected String Pname;
	protected double price;
	protected String detail;
	
	public String getType() {return Type;}
	public String getPNO() {return PNO;}
	public String getPname() {return Pname;}
	public double getprice() {return price;}
	public String getdetail() {return detail;}
	
	public void setType(String type) {this.Type = type;}
	public void setPNO(String pno) {this.PNO = pno;}
	public void setPname(String pname) {this.Pname = pname;}
	public void setprice(double pr) {this.price = pr;}
	public void setdetail(String dt) {this.detail = dt;}

}
