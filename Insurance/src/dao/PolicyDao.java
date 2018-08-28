package dao;

import java.util.List;
import domain.Policy;

public interface PolicyDao extends BaseDao {
	int addPolicy(Policy policy);
	int deletePolicy(String pName);
	int updatePolicy(String oldName,Policy policy);
	List<Policy> getAllPolicy();
	Policy getAppointPolicy(String pName);
	List<Policy> mohuQuery(String keyword);
}