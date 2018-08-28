package dao;

import java.util.List;
import domain.Admin;
import domain.AdminStatus;

public interface AdminDao extends BaseDao {
	int addAdmin(Admin admin); // 添加管理员
	int deleteAdmin(String aName); // 删除管理员
	int updateAdmin(String oldName,Admin admin); // 更新信息
	Admin getAppointAdmin(String aName);
	List<Admin> getAllAdmins();
	List<Admin> findByStatus(AdminStatus as);
}
