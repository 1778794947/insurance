package domain;

public class Policy {
	private String pName;
	private Integer pMoney;
	private Integer pMinLose;
	private Integer pMaxLose;
	private String pDesc;
	private String tName;
	private String pImg;
	
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public Integer getpMinLose() {
		return pMinLose;
	}
	public void setpMinLose(Integer pMinLose) {
		this.pMinLose = pMinLose;
	}
	public Integer getpMaxLose() {
		return pMaxLose;
	}
	public void setpMaxLose(Integer pMaxLose) {
		this.pMaxLose = pMaxLose;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public Integer getpMoney() {
		return pMoney;
	}
	public void setpMoney(Integer pMoney) {
		this.pMoney = pMoney;
	}
	public String getpDesc() {
		return pDesc;
	}
	public void setpDesc(String pDesc) {
		this.pDesc = pDesc;
	}
	public String getpImg() {
		return pImg;
	}
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
	public Policy() {
		super();
	}
	public Policy(String pName, Integer pMoney, Integer pMinLose, Integer pMaxLose, String pDesc, String tName,
			String pImg) {
		super();
		this.pName = pName;
		this.pMoney = pMoney;
		this.pMinLose = pMinLose;
		this.pMaxLose = pMaxLose;
		this.pDesc = pDesc;
		this.tName = tName;
		this.pImg = pImg;
	}
}
