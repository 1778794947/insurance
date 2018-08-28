package domain;

public class User {
	private String uName;
	private String uPwd;
	private String uEmail;
	
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuPwd() {
		return uPwd;
	}
	public void setuPwd(String uPwd) {
		this.uPwd = uPwd;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String uName, String uPwd, String uEmail) {
		super();
		this.uName = uName;
		this.uPwd = uPwd;
		this.uEmail = uEmail;
	}
}
