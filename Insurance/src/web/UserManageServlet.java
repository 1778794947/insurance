package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.dsna.util.images.ValidateCode;
import domain.User;

@WebServlet("/userManage")
public class UserManageServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	Object addUser(HttpServletRequest request,HttpServletResponse response) {
		String uName = request.getParameter("uName");
		String uPwd = request.getParameter("uPwd");
		String uEmail = request.getParameter("uEmail");
		User user = new User(uName, uPwd, uEmail);
		userDao.addUser(user);
		Object uri = null;
		uri = "/client/index.jsp";
		return uri;
	}
	
	Object checkLogin(HttpServletRequest request,HttpServletResponse response) {
		String uname = request.getParameter("uName");
		String upwd = request.getParameter("uPwd");
		String noLogin = request.getParameter("noLogin");
		String code = request.getParameter("code");
		String sCode = (String) request.getSession().getAttribute("sCode");
//		System.out.println("用户名"+uname+"\\密码"+upwd);
//		System.out.println("用户输入："+code+"\\sessionCode:"+sCode);
		
		try {
			PrintWriter out = response.getWriter();;
			if(!code.equalsIgnoreCase(sCode)){
				out.println("<script>alert('验证码错误！');self.location=document.referrer;</script>") ;
				return null;
			}
			List<User> lists = userDao.getAllUsers();
			for (User user : lists) {
				if(user.getuName().equals(uname) && user.getuPwd().equals(upwd)) {
					switch (noLogin) {
					case "3hour":
						setSession(request, "uname", uname, 3*60);
						break;
					case "3day":
						setSession(request, "uname", uname, 3*24*60);
						break;
					case "7day":
						setSession(request, "uname", uname, 7*24*60);
						break;
					default:
						setSession(request, "uname", uname, 3);
					}
					Object uri = null;
					uri = "/client/index.jsp";
					return uri;
				}
			}
			out.println("<script>alert('登录失败，用户名或密码错误！');history.back();</script>") ;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	Object updateUser(HttpServletRequest request,HttpServletResponse response) {
		String uName = request.getParameter("uName");
		String uPwd = request.getParameter("uPwd");
		String uEmail = request.getParameter("uEmail");
		User user = new User(uName, uPwd, uEmail);
		HttpSession session = request.getSession();
		String oldName = (String)session.getAttribute("uName");
		userDao.updateUser(oldName, user);
		Object uri = null;
		uri = "/app/index.jsp";
		return uri;
	}
	
	void productCode(HttpServletRequest request,HttpServletResponse response) {
		//告诉客户端不使用缓存
		response.setHeader("param", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setIntHeader("expires", 0);
		
		ValidateCode vc = new ValidateCode(110, 25, 4, 9);
		request.getSession().setAttribute("sCode", vc.getCode());
		try {
			vc.write(response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	protected void setSession(HttpServletRequest request, String key, String value, int timeNum) {
		HttpSession session = request.getSession();
		session.setAttribute(key, value);
		session.setMaxInactiveInterval(timeNum*60);
	}
	
	
}
