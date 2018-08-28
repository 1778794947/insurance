package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BReplyDao;
import domain.BReply;
import factory.BeanFactory;

@WebServlet("/BreplyServlet")
public class BreplyServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BReplyDao bReplyDao = BeanFactory.getInstance("BReplyDaoImpl", BReplyDao.class);
		String bdesc=req.getParameter("bDesc");
		String cpaymoney=req.getParameter("cPayMoney");
		Integer icpaymoney=Integer.valueOf(cpaymoney);;
		String aName = req.getParameter("aName");
		String pname=req.getParameter("pName");
		String zName = req.getParameter("zName");
		bReplyDao.updateBReply(pname, zName, new BReply(bdesc, icpaymoney, aName));
		resp.sendRedirect(req.getContextPath()+"/admin/claim.jsp");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
}
