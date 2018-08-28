package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import dao.PolicyDao;
import domain.Admin;
import domain.Policy;

public class PolicyDaoImpl implements PolicyDao {

	@Override
	public int addPolicy(Policy policy) {
		if(getAppointPolicy(policy.getpName()) == null) {
			String sql = "insert into policy(pName,pMoney,pMinLose,pMaxLose,pDesc,tName,pImg)values(?,?,?,?,?,?,?)";
			Object[] param = new Object[] {policy.getpName(),policy.getpMoney(),policy.getpMinLose(),policy.getpMaxLose(),policy.getpDesc(),policy.gettName(),policy.getpImg()};
			try {
				qr.update(sql, param);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return 1;
		}
		return 0;
	}

	@Override
	public int deletePolicy(String pName) {
		if(getAppointPolicy(pName) != null) {
			try {
				String sql = "delete from policy where pName=?";
				qr.update(sql,pName);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return 1;
		}
		return 0;
	}

	@Override
	public int updatePolicy(String oldName,Policy policy) {
		if(getAppointPolicy(oldName) != null) {
			String sql = "update policy set pName=?,pMoney=?,pMinLose=?,pMaxLose=?,pDesc=?,tName=?,pImg=? where pName=?";
			Object[] param = new Object[] {policy.getpName(),policy.getpMoney(),policy.getpMinLose(),policy.getpMaxLose(),policy.getpDesc(),policy.gettName(),policy.getpImg(),oldName};
			try {
				qr.update(sql, param);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return 1;
		}
		return 0;
	}

	@Override
	public List<Policy> getAllPolicy() {
		String sql="select * from policy";
		try {
			return qr.query(sql, new BeanListHandler<Policy>(Policy.class));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Policy getAppointPolicy(String pName) {
		String sql="select * from policy where pName=?";
		try {
			return qr.query(sql, new BeanHandler<Policy>(Policy.class), pName);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
		PolicyDaoImpl p = new PolicyDaoImpl();
		//p.addPolicy(new Policy("横江养老保险", 15, 55, "养老保险"));
		//String tName = p.getAppointPolicy("横江养老保险").gettName();
		//System.out.println(new TypeDaoImpl().getAppointType(tName));
		System.out.println(p.mohuQuery("低功耗"));
	}

	@Override
	public List<Policy> mohuQuery(String keyword) {
		String likeSelect = "select * from policy where pName like '%"+keyword+"%'";
		try {
			return qr.query(likeSelect,new BeanListHandler<Policy>(Policy.class));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
