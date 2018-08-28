package dao;

import java.util.List;

import domain.Type;

public interface TypeDao extends BaseDao {
	int addType(Type type);
	int deleteType(String tName);
	int updateType(Type type);
	Type getAppointType(String tName);
	List<Type> getAllType();
	List<Type> mohuQuery(String keyword);
}
