package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.Admin;

@WebServlet("/adminManage")
public class AdminManageServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	Object addPartAdmin(HttpServletRequest request,HttpServletResponse response) { //
		String name = request.getParameter("aName");
		String pwd = request.getParameter("aPwd");
		Admin admin = new Admin(name, pwd, 1);
		adminService.addAdmin(admin);
		Object uri = null;
		//uri = request.getRequestDispatcher("/admin/index.jsp");
		uri = "/admin/index.jsp";
		return uri;
	}
	
	Object addAdmin(HttpServletRequest request,HttpServletResponse response) {
		String name = request.getParameter("aName");
		String pwd = request.getParameter("aPwd");
		Admin admin = new Admin(name, pwd, 1);
		List<Admin> admins = adminService.findBestAdmin();
		String aName = admin.getaName();
		for (Admin a : admins) {
			if(aName.equals(a.getaName())) {
				adminService.addAdmin(admin);
				Object uri = null;
				//uri = request.getRequestDispatcher("/admin/index.jsp");
				uri = "/admin/index.jsp";
				return uri;
			}
		}
		return null;
	}
	
	Object delAdmin(HttpServletRequest request,HttpServletResponse response) {
		String aName = "";
		List<Admin> admins = adminService.findBestAdmin();
		for (Admin a : admins) {
			if(aName.equals(a.getaName())) {
				adminService.deleteAdmin(aName);
				Object uri = null;
				uri = request.getRequestDispatcher("/admin/index.jsp");
				return uri;
			}
		}
		return null;
	}

	Object updAdmin(HttpServletRequest request,String oldName,Admin admin) {
		adminService.updateAdmin(oldName, admin);
		Object uri = null;
		uri = request.getRequestDispatcher("/admin/index.jsp");
		return uri;
	}
	
	Object getAppointAdmin(HttpServletRequest request,String aName) {
		Admin admin = adminService.getAppointAdmin(aName);
		request.setAttribute("appointAdmin", admin);
		Object uri = null;
		uri = request.getRequestDispatcher("/admin/showAppointAdmin.jsp");
		return uri;
	}
	
	Object getAllAdmin(HttpServletRequest request,HttpServletResponse response) {
		List<Admin> admins = adminService.getAllAdmins();
		request.setAttribute("allAdmin", admins);
		Object uri = null;
		uri = request.getRequestDispatcher("/admin/showAllAdmin.jsp");
		return uri;
	}

	Object doLogin(HttpServletRequest request,HttpServletResponse response) {
		String name = request.getParameter("aName");
		String pwd = request.getParameter("aPwd");
		String noLogin = request.getParameter("noLogin");
		List<Admin> admins = adminService.getAllAdmins();
		for (Admin admin : admins) {
			if(admin.getaName().equals(name) && admin.getaPwd().equals(pwd)) {
				switch (noLogin) {
				case "3hour":
					setSession(request, "adminname", name, 3*60);
					break;
				case "3day":
					setSession(request, "adminname", name, 3*24*60);
					break;
				case "7day":
					setSession(request, "adminname", name, 7*24*60);
					break;
				default:
					setSession(request, "adminname", name, 3);
				}
				Object uri = null;
				uri = request.getRequestDispatcher("/admin/right.jsp");
				return uri;
			}
		}
		try {
			response.getWriter().println("<script>alert('登录失败，用户名或密码错误！');history.back();</script>") ;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	protected void setSession(HttpServletRequest request, String key, String value, int timeNum) {
		HttpSession session = request.getSession();
		session.setAttribute(key, value);
		session.setMaxInactiveInterval(timeNum*60);
	}
}