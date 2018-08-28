package dao;

import java.util.List;

import domain.RegPolicy;

public interface RegPolicyDao extends BaseDao {
	int addRegPolicy(RegPolicy regPolicy);
	List<RegPolicy> getAppointRegPolicys(String uName);
	List<RegPolicy> getAllRegPolicys();
	int changeStatus(RegPolicy regPolicy);
}
