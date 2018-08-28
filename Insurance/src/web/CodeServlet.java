package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dsna.util.images.ValidateCode;

@WebServlet("/image")
public class CodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//告诉客户端不使用缓存
		response.setHeader("param", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setIntHeader("expires", 0);
		
		ValidateCode vc = new ValidateCode(110, 25, 4, 9);
		request.getSession().setAttribute("sCode", vc.getCode());
		vc.write(response.getOutputStream());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}