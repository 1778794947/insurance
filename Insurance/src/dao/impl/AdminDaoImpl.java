package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import dao.AdminDao;
import domain.Admin;
import domain.AdminStatus;

public class AdminDaoImpl implements AdminDao {

	@Override
	public int addAdmin(Admin admin) {
		if(getAppointAdmin(admin.getaName()) == null) {
			String sql = "insert into admin(aName,aPwd,aPermission)values(?,?,?)";
			Object[] param = new Object[] {admin.getaName(),admin.getaPwd(),admin.getaPermission()};
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
	public int deleteAdmin(String aName) {
		if(getAppointAdmin(aName) != null) {
			try {
				String sql = "delete from admin where aName=?";
				qr.update(sql,aName);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return 1;
		}
		return 0;	
	}
	
	@Override
	public int updateAdmin(String oldName, Admin admin) {
		if(getAppointAdmin(oldName) != null) {
			String sql = "update admin set aName=?,aPwd=?,aPermission=? where aName=?";
			Object[] param = new Object[] {admin.getaName(),admin.getaPwd(),admin.getaPermission(),oldName};
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
	public Admin getAppointAdmin(String aName) {
		String sql="select * from admin where aName=?";
		try {
			return qr.query(sql, new BeanHandler<Admin>(Admin.class), aName);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<Admin> getAllAdmins() {
		String sql="select * from admin";
		try {
			return qr.query(sql, new BeanListHandler<Admin>(Admin.class));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<Admin> findByStatus(AdminStatus as) {
		String sql = "select * from admin where aPermission=?";
		try {
			return qr.query(sql, new BeanListHandler<Admin>(Admin.class), as.ordinal());
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
		AdminDaoImpl a = new AdminDaoImpl();
		//a.addAdmin(new Admin("zhang2","ii",1));
		//a.deleteAdmin("zhang");
		//a.updateAdmin("zhang", "zhang1", "23", 0);
		List<Admin> list = a.getAllAdmins();
		for (Admin admin : list) {
			System.out.println(admin.getaName());
		}
		System.out.println("===============");
		List<Admin> admins = a.findByStatus(AdminStatus.Part);
		for (Admin admin : admins) {
			System.out.println(admin.getaName());
		}
//		System.out.println(AdminStatus.All.ordinal());
//		System.out.println(AdminStatus.All.name());
//		System.out.println(AdminStatus.Part);
	}
}
