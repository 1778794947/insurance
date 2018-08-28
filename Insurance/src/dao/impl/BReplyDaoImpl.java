package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;

import dao.BReplyDao;
import domain.BReply;

public class BReplyDaoImpl implements BReplyDao {

	@Override
	public int addReply(BReply bReply) {
		String insertsql="insert into breply(bDesc,cPayMoney,pName,zName,aName,uName) value(?,?,?,?,?,?)";
		Object[] param= {bReply.getbDesc(),bReply.getcPayMoney(),bReply.getpName(),bReply.getzName(),bReply.getaName(),bReply.getuName()};
		try {
			qr.update(insertsql,param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 1;
	}

	@Override
	public List<BReply> getAppointRegBReplys(String uName) {
		String sql="select * from breply where uName=?";
		try {
			return qr.query(sql, new BeanListHandler<BReply>(BReply.class), uName);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public int updateBReply(String pName, String zName, BReply bReply) {
		String sql = "update breply set bDesc=?,cPayMoney=?,aName=? where pName=? and zName=?";
		Object[] param = new Object[] {bReply.getbDesc(),bReply.getcPayMoney(),bReply.getaName(),pName,zName};
		try {
			qr.update(sql, param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 1;
	}

}
