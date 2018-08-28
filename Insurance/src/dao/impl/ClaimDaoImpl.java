package dao.impl;

import java.sql.SQLException;

import dao.ClaimDao;
import domain.Claim;

public class ClaimDaoImpl implements ClaimDao {

	@Override
	public int addClaim(Claim claim) {
		String insertsql="insert into claim(cDesc,cFile,pName,zName) value(?,?,?,?)";
		Object[] param= {claim.getcDesc(),claim.getcFile(),claim.getpName(),claim.getzName()};
		try {
			qr.update(insertsql,param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 1;
	}

}
