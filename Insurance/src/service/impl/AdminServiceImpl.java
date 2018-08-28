package service.impl;

import java.util.List;

import domain.Admin;
import domain.AdminStatus;
import service.AdminService;

public class AdminServiceImpl implements AdminService {

	@Override
	public List<Admin> findBestAdmin() {
		return adminDao.findByStatus(AdminStatus.All);
	}

	@Override
	public int addAdmin(Admin admin) {
		return adminDao.addAdmin(admin);
	}

	@Override
	public int deleteAdmin(String aName) {
		return adminDao.deleteAdmin(aName);
	}

	@Override
	public int updateAdmin(String oldName, Admin admin) {
		return adminDao.updateAdmin(oldName, admin);
	}

	@Override
	public Admin getAppointAdmin(String aName) {
		return adminDao.getAppointAdmin(aName);
	}

	@Override
	public List<Admin> getAllAdmins() {
		return adminDao.getAllAdmins();
	}

}
