package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import dao.ZInfoDao;
import domain.ZInfo;

public class ZInfoDaoImpl implements ZInfoDao {

	@Override
	public int addZInfo(ZInfo zinfo) {	
		String sql = "insert into zinfo(zName,zNumber,zBirthday,zTel,zAddress,iName,iNumber,iTel,iAddress)values(?,?,?,?,?,?,?,?,?)";
		Object[] param = new Object[] {zinfo.getZname(),zinfo.getZnumber(),zinfo.getZbirthday(),zinfo.getZtel(),zinfo.getZaddress(),zinfo.getIname(),zinfo.getInumber(),zinfo.getItel(),zinfo.getIaddress()};
		try {
			qr.update(sql, param);	
		} catch (SQLException e) {	
			e.printStackTrace();
		}
		return 1;

	}

	@Override
	public ZInfo getAppointZInfo(String zNumber) {
		String sql="select * from zinfo where zNumber=?";
		try {
			return qr.query(sql, new BeanHandler<ZInfo>(ZInfo.class), zNumber);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<ZInfo> getAllZInfos() {
		String sql="select * from zinfo";
		try {
			return qr.query(sql, new BeanListHandler<ZInfo>(ZInfo.class));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
//		ZInfoDaoImpl z = new ZInfoDaoImpl();
//		DateFormat dateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
//		try {
//			Date date = dateFormat1.parse("1969-06-01");
//			z.addZInfo(new ZInfo("张三", "212445123465453451", date,"13766665555", "深圳市..."));
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}
//		
//		List<ZInfo> zInfos = z.getAllZInfos();
//		for (ZInfo zInfo : zInfos) {
//			System.out.println(zInfo.getzName()+"  身份证号："+zInfo.getzNumber());
//		}
	}
}
