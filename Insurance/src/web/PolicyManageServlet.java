package web;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import domain.BReply;
import domain.RegPolicy;

@WebServlet("/policyManage")
public class PolicyManageServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	void getUnamePolicys(HttpServletRequest request,HttpServletResponse response) {
		String uName = (String) request.getSession().getAttribute("uname");
		List<RegPolicy> regPolicies = regPolicyDao.getAppointRegPolicys(uName);
		Gson gson = new Gson();
		String json = gson.toJson(regPolicies);
		try {
			response.getWriter().println(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	void getPnameBReply(HttpServletRequest request,HttpServletResponse response) {
		String uName = (String) request.getSession().getAttribute("uname");
		List<BReply> bReplies = bReplyDao.getAppointRegBReplys(uName);
		Gson gson = new Gson();
		String json = gson.toJson(bReplies);
		try {
			response.getWriter().println(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
