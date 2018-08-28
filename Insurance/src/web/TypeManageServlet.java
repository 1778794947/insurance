package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import domain.Policy;
import domain.Type;

@WebServlet("/typeManage")
public class TypeManageServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	void getAlltypes(HttpServletRequest request,HttpServletResponse response) {
		List<Type> types = typeDao.getAllType();
		Gson gson = new Gson();
		String json = gson.toJson(types);
		try {
			PrintWriter out = response.getWriter();
			out.println(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	Object addType(HttpServletRequest request,HttpServletResponse response){
		String tName = request.getParameter("name");;
		Type type = new Type(tName);
		System.out.println(typeDao.addType(type));
		Object uri = null;
		uri = "/admin/typecontrol.jsp";
		return uri;	
	}
	
	void search(HttpServletRequest request,HttpServletResponse response) {
		String keyword = request.getParameter("keyword");
		List<Type> types = typeDao.mohuQuery(keyword);
		Gson gson = new Gson();
		String json = gson.toJson(types);
		try {
			PrintWriter out = response.getWriter();
			out.println(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	void deleteType(HttpServletRequest request,HttpServletResponse response) {
		String tName = request.getParameter("tName");
		//System.out.println(tName);
		typeDao.deleteType(tName);
	}
	
	Object updateType(HttpServletRequest request,HttpServletResponse response) {
		String tName = request.getParameter("tName");
		
		Type type = new Type(tName);
		System.out.println(typeDao.updateType(type));
		Object uri = null;
		uri = "/admin/policycontrol.jsp";
		return uri;
	}

	Integer strToInteger(String str) {
		Integer i = null;
		if(str!=null){
		     i = Integer.valueOf(str);
		}
		return i;
	}
}
