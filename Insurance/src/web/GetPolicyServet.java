package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.PolicyDao;
import domain.Policy;
import factory.BeanFactory;

@WebServlet("/getPolicy")
public class GetPolicyServet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PolicyDao policyDao = BeanFactory.getInstance("policydao", PolicyDao.class);
		List<Policy> policies = policyDao.getAllPolicy();
		request.setAttribute("list", policies);
		Gson gson = new Gson();
		String json = gson.toJson(policies);
		try {
			PrintWriter out = response.getWriter();
			out.write(json);
		} catch (IOException e1) {
			e1.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}