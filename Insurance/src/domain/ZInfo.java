package domain;

import java.util.Date;

public class ZInfo {
	private String zname;
	private String znumber;
	private Date zbirthday;
	private String ztel;
	private String zaddress;
	private String iname;
	private String inumber;
	private String itel;
	private String iaddress;
	
	public String getZname() {
		return zname;
	}
	public void setZname(String zname) {
		this.zname = zname;
	}
	public String getZnumber() {
		return znumber;
	}
	public void setZnumber(String znumber) {
		this.znumber = znumber;
	}
	public Date getZbirthday() {
		return zbirthday;
	}
	public void setZbirthday(Date zbirthday) {
		this.zbirthday = zbirthday;
	}
	public String getZtel() {
		return ztel;
	}
	public void setZtel(String ztel) {
		this.ztel = ztel;
	}
	public String getZaddress() {
		return zaddress;
	}
	public void setZaddress(String zaddress) {
		this.zaddress = zaddress;
	}
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public String getInumber() {
		return inumber;
	}
	public void setInumber(String inumber) {
		this.inumber = inumber;
	}
	public String getItel() {
		return itel;
	}
	public void setItel(String itel) {
		this.itel = itel;
	}
	public String getIaddress() {
		return iaddress;
	}
	public void setIaddress(String iaddress) {
		this.iaddress = iaddress;
	}
	public ZInfo() {
		super();
	}
	public ZInfo(String zname, String znumber, Date zbirthday, String ztel, String zaddress, String iname,
			String inumber, String itel, String iaddress) {
		super();
		this.zname = zname;
		this.znumber = znumber;
		this.zbirthday = zbirthday;
		this.ztel = ztel;
		this.zaddress = zaddress;
		this.iname = iname;
		this.inumber = inumber;
		this.itel = itel;
		this.iaddress = iaddress;
	}
}