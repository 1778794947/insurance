package dao.impl;

import java.sql.SQLException;
import java.util.List;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import dao.UserDao;
import domain.User;

public class UserDaoImpl implements UserDao {

	@Override
	public int addUser(User user) {
		if(getAppointUser(user.getuName()) == null) {
			String sql = "insert into userinfo(uName,uPwd,uEmail)values(?,?,?)";
			Object[] param = new Object[] {user.getuName(),user.getuPwd(),user.getuEmail()};
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
	public int updateUser(String oldName, User user) {
		if(getAppointUser(oldName) != null) {
			String sql = "update userinfo set uName=?,uPwd=?,uEmail=? where uName=?";
			Object[] param = new Object[] {user.getuName(),user.getuPwd(),user.getuEmail(),oldName};
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
	public User getAppointUser(String uName) {
		String sql="select * from userinfo where uName=?";
		try {
			return qr.query(sql, new BeanHandler<User>(User.class), uName);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<User> getAllUsers() {
		String sql="select * from userinfo";
		try {
			return qr.query(sql, new BeanListHandler<User>(User.class));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
		UserDaoImpl a = new UserDaoImpl();
		a.addUser(new User("zhang2","ii","213@126.com"));	
//		List<User> list = a.getAllUsers();
//		for (User admin : list) {
//			System.out.println(admin);
//		}
	}
}
