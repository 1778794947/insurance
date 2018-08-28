package dao;

import java.util.List;
import domain.User;

public interface UserDao extends BaseDao {	
	int addUser(User user);
	int updateUser(String oldName,User user); // 更新信息
	User getAppointUser(String uName); // 查询指定用户
	List<User> getAllUsers();
}
