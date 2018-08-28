package web;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.QQMailUtil;

@WebServlet("/validataEmail")
public class VerificationMailServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	String strs = "a:b";
	
	void sendEmail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = request.getParameter("email");
		strs =  QQMailUtil.qqSendMail("895952717@qq.com", "eakuwgbkpgfbbccf", "smtp.qq.com", email);
		response.getWriter().print("<font color='green'>邮件已发送！</font>");
	}
	
	void verifuName(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String uName = request.getParameter("uName");
		if(uName == "") {
			response.getWriter().print("<font color='red'>用户名不能为空！</font>");
		}else if(userDao.getAppointUser(uName) != null) {
			response.getWriter().print("<font color='red'>用户名重复！</font>");
		}else {
			response.getWriter().print("<font color='green'>用户名可用</font>");
		}
	}
	
	void yzCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String eCode = request.getParameter("eCode");
		//System.out.println("eCode:"+eCode);
		String code =  strs.split(":")[1];
		//System.out.println("code:"+code);
		if("b".equals(code)) {
			response.getWriter().print("<font color='red'>邮箱验证码不能为空</font>");
		}else if(eCode.equals(code)) {
			response.getWriter().print("<font color='green'>邮箱验证码正确</font>");
		}else {
			response.getWriter().print("<font color='red'>邮箱验证码错误</font>");
		}
	}
	
	void verifMail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = request.getParameter("uemail");
		if(!checkEmail(email)) {
			response.getWriter().print("<font color='red'>邮箱格式错误！</font>");
		}else {
			response.getWriter().print("<font color='green'>邮箱可用</font>");
		}
	}
	
	/**
	* 验证邮箱
	* @param email 待验证的字符串
	* @return 如果是符合的字符串,返回 <b>true </b>,否则为 <b>false </b>
	* */
	public boolean checkEmail(String email) {
		String checkString = "^([\\w_\\.]+)@((\\[[\\w]{1,3}\\.[\\w]{1,3}\\.[\\w]{1,3}\\.)|(([\\w-]+\\.)+))([\\w]{2,4}|[\\w]{1,3})(\\]?)$";
		return match(checkString, email);
	}
	
	/**
	* 正则验证函数
	* @param checkString 正则表达式字符串
	* @param target 要匹配的字符串
	* @return 如果target 符合 checkString的正则表达式格式,返回true, 否则返回 false;
	* */
	private static boolean match(String checkString, String target) {
	Pattern pattern = Pattern.compile(checkString);
	Matcher matcher = pattern.matcher(target);
	return matcher.matches();
	}
}
