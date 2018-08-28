package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RegPolicyDao;
import domain.RegPolicy;
import factory.BeanFactory;
@WebServlet("/RegPolicyServlet")
public class RegPolicyServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		RegPolicyDao regPolicyDao=new RegPolicyDaoimpl();
		RegPolicyDao regPolicyDao = BeanFactory.getInstance("RegPolicyDaoImpl", RegPolicyDao.class);
		
		RegPolicy regPolicy=new RegPolicy();
		req.setCharacterEncoding("UTF-8");
		String zname=req.getParameter("zname");
		String iname=req.getParameter("iname");
		String status=req.getParameter("status");
		int istatus=Integer.parseInt(status);
		System.out.println(zname+iname+status);
		regPolicy.setRstatus(istatus);
		regPolicy.setZname(zname);
		regPolicy.setIname(iname);
		regPolicyDao.changeStatus(regPolicy);
		resp.sendRedirect(req.getContextPath()+"/admin/showuserpolicy.jsp");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
}
