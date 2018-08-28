package domain;

public class Type {
	private String tName;
	
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public Type(String tName) {
		super();
		this.tName = tName;
	}
	public Type() {
		super();
	}
}
