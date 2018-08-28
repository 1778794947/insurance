package web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BReplyDao;
import dao.ClaimDao;
import dao.PolicyDao;
import dao.RegPolicyDao;
import dao.TypeDao;
import dao.UserDao;
import dao.ZInfoDao;
import factory.BeanFactory;
import service.AdminService;
import util.WebUtil;

public class BaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected AdminService adminService = BeanFactory.getInstance("adminservice", AdminService.class);
//	protected UserService userService = BeanFactory.getInstance("userservice", UserService.class);
	UserDao userDao = BeanFactory.getInstance("userdao", UserDao.class);
	PolicyDao policyDao = BeanFactory.getInstance("policydao", PolicyDao.class);
	TypeDao typeDao = BeanFactory.getInstance("typedao", TypeDao.class);
	ZInfoDao zInfoDao = BeanFactory.getInstance("ZInfoDaoImpl", ZInfoDao.class);
	RegPolicyDao regPolicyDao = BeanFactory.getInstance("RegPolicyDaoImpl", RegPolicyDao.class);
	ClaimDao claimDao = BeanFactory.getInstance("ClaimDaoImpl", ClaimDao.class);
	BReplyDao bReplyDao = BeanFactory.getInstance("BReplyDaoImpl", BReplyDao.class);
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				// (保存跳转的资源)  方法返回值
				 Object returnValue = null;
				// 1、根据请求获取请求的方法;  【约定 >  操作类型的值，必须对应servlet中的方法名称】
				String methodName=request.getParameter("method");

				try {
					// 2、通过反射获得当前运行类中指定方法,形式参数
					Method m=this.getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);

					// 3. 执行方法
					returnValue=m.invoke(this, request,response);

				} catch (NoSuchMethodException | SecurityException | IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
					returnValue = "/error/error.jsp";
					e.printStackTrace();
				}
				//4、跳转页面
				WebUtil.goTo(request, response, returnValue);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}