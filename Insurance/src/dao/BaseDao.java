package dao;

import org.apache.commons.dbutils.QueryRunner;

import util.C3P0Util;

public interface BaseDao {
	QueryRunner qr = new QueryRunner(C3P0Util.getC3P0Util().getDataSource());
}
