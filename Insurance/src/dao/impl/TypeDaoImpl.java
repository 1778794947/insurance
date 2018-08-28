package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import dao.TypeDao;
import domain.Admin;
import domain.Policy;
import domain.Type;

public class TypeDaoImpl implements TypeDao {

	@Override
	public int addType(Type type) {
		if(getAppointType(type.gettName()) == null) {
			String sql = "insert into type(tName)values(?)";
			Object[] param = new Object[] {type.gettName()};
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
	public int deleteType(String tName) {
		if(getAppointType(tName) != null) {
			try {
				String sql = "delete from type where tName=?";
				qr.update(sql,tName);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return 1;
		}
		return 0;
	}

	@Override
	public int updateType(Type type) {
		if(getAppointType(type.gettName()) != null) {
			String sql = "update type set tName=? where tName=?";
			Object[] param = new Object[] {type.gettName(),type.gettName()};
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
	public Type getAppointType(String tName) {
		String sql="select * from type where tName=?";
		try {
			return qr.query(sql, new BeanHandler<Type>(Type.class), tName);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Type> getAllType() {
		String sql="select * from type";
		try {
			return qr.query(sql, new BeanListHandler<Type>(Type.class));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Type> mohuQuery(String keyword) {
		String likeSelect = "select * from type where tName like '%"+keyword+"%'";
		try {
			return qr.query(likeSelect,new BeanListHandler<Type>(Type.class));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
