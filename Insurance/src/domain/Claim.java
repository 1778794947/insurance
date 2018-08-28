package domain;

public class Claim {
	private String cDesc;
	private String cFile;
	private String pName;
	private String zName;
	public String getcDesc() {
		return cDesc;
	}
	public void setcDesc(String cDesc) {
		this.cDesc = cDesc;
	}
	public String getcFile() {
		return cFile;
	}
	public void setcFile(String cFile) {
		this.cFile = cFile;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getzName() {
		return zName;
	}
	public void setzName(String zName) {
		this.zName = zName;
	}
	public Claim() {
	}
	public Claim(String cDesc, String cFile, String pName, String zName) {
		super();
		this.cDesc = cDesc;
		this.cFile = cFile;
		this.pName = pName;
		this.zName = zName;
	}
}
