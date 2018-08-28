package service;

import java.util.List;

import dao.AdminDao;
import domain.Admin;
import factory.BeanFactory;

public interface AdminService {
	AdminDao adminDao = BeanFactory.getInstance("admindao", AdminDao.class);
	List<Admin> findBestAdmin();
	int addAdmin(Admin admin);
	int deleteAdmin(String aName);
	int updateAdmin(String oldName,Admin admin);
	Admin getAppointAdmin(String aName);
	List<Admin> getAllAdmins();
}
