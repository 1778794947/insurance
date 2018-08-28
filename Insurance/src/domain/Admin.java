package domain;

public class Admin {
	private String aName;
	private String aPwd;
	private Integer aPermission;
	
	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	public String getaPwd() {
		return aPwd;
	}
	public void setaPwd(String aPwd) {
		this.aPwd = aPwd;
	}
	public Integer getaPermission() {
		return aPermission;
	}
	public void setaPermission(Integer aPermission) {
		this.aPermission = aPermission;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(String aName, String aPwd, Integer aPermission) {
		super();
		this.aName = aName;
		this.aPwd = aPwd;
		this.aPermission = aPermission;
	}
}
