package domain;

import java.util.Date;

public class RegPolicy {
	private Date rdatereg;
	private Integer rterm;
	private Integer rstatus;
	private String zname;
	private String znumber;
	private String iname;
	private String inumber;
	private String pname;
	private Integer pmoney;
	private Integer pminlose;
	private Integer pmaxlose;
	private String uname;
	public Date getRdatereg() {
		return rdatereg;
	}
	public void setRdatereg(Date rdatereg) {
		this.rdatereg = rdatereg;
	}
	public Integer getRterm() {
		return rterm;
	}
	public void setRterm(Integer rterm) {
		this.rterm = rterm;
	}
	public Integer getRstatus() {
		return rstatus;
	}
	public void setRstatus(Integer rstatus) {
		this.rstatus = rstatus;
	}
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
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getPmoney() {
		return pmoney;
	}
	public void setPmoney(Integer pmoney) {
		this.pmoney = pmoney;
	}
	public Integer getPminlose() {
		return pminlose;
	}
	public void setPminlose(Integer pminlose) {
		this.pminlose = pminlose;
	}
	public Integer getPmaxlose() {
		return pmaxlose;
	}
	public void setPmaxlose(Integer pmaxlose) {
		this.pmaxlose = pmaxlose;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public RegPolicy() {
		super();
	}
	public RegPolicy(Date rdatereg, Integer rterm, Integer rstatus, String zname, String znumber, String iname,
			String inumber, String pname, Integer pmoney, Integer pminlose, Integer pmaxlose, String uname) {
		super();
		this.rdatereg = rdatereg;
		this.rterm = rterm;
		this.rstatus = rstatus;
		this.zname = zname;
		this.znumber = znumber;
		this.iname = iname;
		this.inumber = inumber;
		this.pname = pname;
		this.pmoney = pmoney;
		this.pminlose = pminlose;
		this.pmaxlose = pmaxlose;
		this.uname = uname;
	}
}
