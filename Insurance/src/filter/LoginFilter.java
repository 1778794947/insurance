package filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter(urlPatterns= {"/admin/c/*"})
public class LoginFilter implements Filter {
	private String unchekedUrls = "/admin/index.jsp,/admin/top.jsp,/admin/right.jsp,/admin/left.jsp"; // 不检测的页面,直接放行

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//System.out.println("执行了LoginFilter");
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		String servletPath = req.getServletPath();
		List<String> urls = Arrays.asList(unchekedUrls.split(","));
		System.out.println("\n-----servletPath为："+servletPath);

		if(urls.contains(servletPath)) {
			//允许通过
			System.out.println("这是指定url，允许通过");
			chain.doFilter(request, response);
			return;
		}
		Object uname = req.getSession().getAttribute("adminname");
		if(uname == null) {
			System.out.println("\n-----未登录,不允许通过");
			PrintWriter pw = resp.getWriter();
			pw.println("<script>alert('还未登录，不能访问这个模块！');history.back();</script>") ;
//			pw.close();
			return;
		}
		//否则说明登陆了，允许通过
		System.out.println("\n-----登陆了，允许通过");
		chain.doFilter(request, response);
	}
}