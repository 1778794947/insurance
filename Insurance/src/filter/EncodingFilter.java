package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * @ClassName:  EncodingFilter   
 * @Description:TODO(将页面编码过滤为utf-8)
 * @author: meijianhua 
 * @date:   2018年7月13日 下午4:30:17
 */
@WebFilter(urlPatterns = "/*")
public class EncodingFilter implements Filter {
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		chain.doFilter(request, response);
	}
}