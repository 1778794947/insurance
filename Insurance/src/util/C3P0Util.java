package util;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3P0Util {
	private static C3P0Util c3p0Util = new C3P0Util();
	private DataSource ds = new ComboPooledDataSource();
	
	private C3P0Util() {}
	
	public static C3P0Util getC3P0Util(){
		return c3p0Util;
	}

	public DataSource getDataSource() {
		return ds;
	}
}
