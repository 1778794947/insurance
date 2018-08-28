package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import dao.RegPolicyDao;
import domain.RegPolicy;

public class RegPolicyDaoImpl implements RegPolicyDao {

	@Override
	public int addRegPolicy(RegPolicy regPolicy) {
		String sql = "insert into regpolicy(rDateReg,rTerm,rStatus,zName,zNumber,iName,iNumber,pName,pMoney,pMinLose,pMaxLose,uName) value(?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] param = new Object[] {regPolicy.getRdatereg(),regPolicy.getRterm(),regPolicy.getRstatus(),regPolicy.getZname(),regPolicy.getZnumber(),regPolicy.getIname(),regPolicy.getInumber(),regPolicy.getPname(),regPolicy.getPmoney(),regPolicy.getPminlose(),regPolicy.getPmaxlose(),regPolicy.getUname()};
		try {
			qr.update(sql, param);
			return 1;
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}	
	}

	@Override
	public List<RegPolicy> getAppointRegPolicys(String uName) {
		String sql="select * from regpolicy where uName=?";
		try {
			return qr.query(sql, new BeanListHandler<RegPolicy>(RegPolicy.class), uName);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<RegPolicy> getAllRegPolicys() {
		String sql="select * from regpolicy";
		try {
			return qr.query(sql, new BeanListHandler<RegPolicy>(RegPolicy.class));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int changeStatus(RegPolicy regPolicy) {
		// TODO Auto-generated method stub
		String updatesql="update regpolicy set rStatus=? where zName=? and iName=?";
		Object[] updateps= {regPolicy.getRstatus(),regPolicy.getZname(),regPolicy.getIname()};
		try {
			qr.update(updatesql, updateps);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	
	public static void main(String[] args) {
//		RegPolicyDaoImpl r = new RegPolicyDaoImpl();
//		DateFormat dateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
//		try {
//			Date date = dateFormat1.parse("2018-07-25");
//			r.addRegPolicy(new RegPolicy(date, 2,"张三","212445123465453451", "横江养老保险", "张三1"));
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}
		
	}
}
