package domain;

public class BReply {
	private String bDesc;
	private Integer cPayMoney;
	private String pName;
	private String zName;
	private String aName;
	private String uName;
	
	public String getbDesc() {
		return bDesc;
	}
	public void setbDesc(String bDesc) {
		this.bDesc = bDesc;
	}
	public int getcPayMoney() {
		return cPayMoney;
	}
	public void setcPayMoney(int cPayMoney) {
		this.cPayMoney = cPayMoney;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	public void setcPayMoney(Integer cPayMoney) {
		this.cPayMoney = cPayMoney;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getzName() {
		return zName;
	}
	public void setzName(String zName) {
		this.zName = zName;
	}
	public BReply() {
		super();
	}
	public BReply(String bDesc, Integer cPayMoney, String pName, String zName, String aName, String uName) {
		super();
		this.bDesc = bDesc;
		this.cPayMoney = cPayMoney;
		this.pName = pName;
		this.zName = zName;
		this.aName = aName;
		this.uName = uName;
	}
	public BReply(String bDesc, Integer cPayMoney, String aName) {
		super();
		this.bDesc = bDesc;
		this.cPayMoney = cPayMoney;
		this.aName = aName;
	}
}
