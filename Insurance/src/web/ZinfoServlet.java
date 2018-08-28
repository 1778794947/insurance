package web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xerces.internal.parsers.DTDConfiguration;

import dao.PolicyDao;
import dao.RegPolicyDao;
import dao.ZInfoDao;
import domain.RegPolicy;
import domain.ZInfo;
import domain.Policy;
import factory.BeanFactory;

@WebServlet("/ZinfoServlet")
public class ZinfoServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RegPolicyDao regPolicyDao = BeanFactory.getInstance("RegPolicyDaoImpl", RegPolicyDao.class);
		PolicyDao policyDao = BeanFactory.getInstance("policydao", PolicyDao.class);
		ZInfoDao zInfoDao = BeanFactory.getInstance("ZInfoDaoImpl", ZInfoDao.class);
		ZInfo zinfo = new ZInfo();
		String zname = req.getParameter("zName");
		String znumber = req.getParameter("zNumber");
		String zbirthday = req.getParameter("zBirthday");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-hh");
		String ztel = req.getParameter("zTel");
		String zaddress = req.getParameter("zAddress");
		String iname = req.getParameter("iName");
		String inumber = req.getParameter("iNumber");
		String itel = req.getParameter("iTel");
		String iaddress = req.getParameter("iAddress");
		zinfo.setZname(zname);
		zinfo.setZnumber(znumber);
		try {
			zinfo.setZbirthday(sdf.parse(zbirthday));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		zinfo.setZtel(ztel);
		zinfo.setZaddress(zaddress);
		zinfo.setIname(iname);
		zinfo.setInumber(inumber);
		zinfo.setItel(itel);
		zinfo.setIaddress(iaddress);
		zInfoDao.addZInfo(zinfo);
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String rdatereg = df.format(new Date());
		Date date = new Date();
		System.out.println(date);
		Integer rterm = 1;
		Integer rstatus = 0; // 默认未生效
		String uname = (String) req.getSession().getAttribute("uname");
		String pname = req.getParameter("pname");
		System.out.println(pname);
		Policy policy = policyDao.getAppointPolicy(pname);
		Integer pmoney = policy.getpMoney();
		Integer pminlose = policy.getpMinLose();
		Integer pmaxlose = policy.getpMaxLose();
		RegPolicy regPolicy = new RegPolicy(date, rterm, rstatus, zname, znumber, iname, inumber, pname, pmoney, pminlose, pmaxlose, uname);
		regPolicyDao.addRegPolicy(regPolicy);
		resp.getWriter().println("<script>alert('购买成功！');</script>") ;
		resp.sendRedirect(req.getContextPath()+"/client/my_insrance_list.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
}
