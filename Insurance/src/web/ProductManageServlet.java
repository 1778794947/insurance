package web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.google.gson.Gson;

import domain.BReply;
import domain.Claim;
import domain.Policy;
import domain.Type;
import util.GetFileName;

@WebServlet("/productManage")
@MultipartConfig(maxFileSize = 6666666, fileSizeThreshold = 1000)
public class ProductManageServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	void getAllpolicys(HttpServletRequest request,HttpServletResponse response) {
		List<Policy> policies = policyDao.getAllPolicy();
		Gson gson = new Gson();
		String json = gson.toJson(policies);
		try {
			PrintWriter out = response.getWriter();
			out.println(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	Object addPolicy(HttpServletRequest request,HttpServletResponse response) {
		Part part = null;
		try {
			part = request.getPart("picfile");
			if(part.getSubmittedFileName() != null && part.getSubmittedFileName() != "") {
				String pName = request.getParameter("pName");
				Integer pMoney = strToInteger(request.getParameter("pMoney"));
				Integer pMinLose = strToInteger(request.getParameter("pMinLose"));
				Integer pMaxLose = strToInteger(request.getParameter("pMaxLose"));
				String pDesc = request.getParameter("pDesc");
				String tName = request.getParameter("tName");
				
				String header = part.getHeader("Content-Disposition");
				String fileName = GetFileName.getFileName(header);
				String saveName = fileName;
				
				part.write("F:\\Working\\eclipse-workspace\\javaWebTest\\Insurance\\WebContent\\admin\\images" + File.separator + saveName);
				Policy policy = new Policy(pName, pMoney, pMinLose, pMaxLose, pDesc, tName,saveName);
				System.out.println(policyDao.addPolicy(policy));
				Object uri = null;
				uri = "/admin/policycontrol.jsp";
				return uri;
			}else{
				response.getWriter().println("<script>alert('上传图片为空！');history.back();</script>") ;
			}
		} catch (IOException | ServletException e) {
			e.printStackTrace();
		}
		return null;	
	}
	
	Object addClaim(HttpServletRequest request,HttpServletResponse response) {
		Part part = null;
		try {
			part = request.getPart("fjfile");
			if(part.getSubmittedFileName() != null && part.getSubmittedFileName() != "") {
				String zName = request.getParameter("zname");
				String pName = request.getParameter("pname");
				String becauseOf = request.getParameter("becauseOf");
				String header = part.getHeader("Content-Disposition");
				String fileName = GetFileName.getFileName(header);
				part.write("F:\\Working\\eclipse-workspace\\javaWebTest\\Insurance\\WebContent\\client\\upload" + File.separator + fileName);
				Claim claim = new Claim(becauseOf, fileName, pName, zName);
				System.out.println(claimDao.addClaim(claim));
				String bDesc = "暂无";
				Integer cPayMoney = 0;
				String aName = "暂无客服受理";
				String uName = (String) request.getSession().getAttribute("uname");
				BReply bReply = new BReply(bDesc, cPayMoney, pName, zName, aName, uName);
				bReplyDao.addReply(bReply);
				Object uri = null;
				uri = "/client/index.jsp";
				return uri;
			}else{
				response.getWriter().println("<script>alert('上传为空！');history.back();</script>") ;
			}
			
		} catch (IOException | ServletException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	void setSelectType(HttpServletRequest request,HttpServletResponse response) {
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
	
	void search(HttpServletRequest request,HttpServletResponse response) {
		String keyword = request.getParameter("keyword");
		List<Policy> list = policyDao.mohuQuery(keyword);
		Gson gson = new Gson();
		String json = gson.toJson(list);
		try {
			PrintWriter out = response.getWriter();
			out.println(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	void deletePolicy(HttpServletRequest request,HttpServletResponse response) {
		String pName = request.getParameter("pName");
		//System.out.println(pName);
		System.out.println(policyDao.deletePolicy(pName));
	}
	
	Object updatePolicy(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		Part part = request.getPart("picfile");
		if(part.getSubmittedFileName() != null && part.getSubmittedFileName() != "") {
			String oldName = request.getParameter("oldName");
			System.out.println(oldName);
			String pName = request.getParameter("pName");
			Integer pMoney = strToInteger(request.getParameter("pMoney"));
			Integer pMinLose = strToInteger(request.getParameter("pMinLose"));
			Integer pMaxLose = strToInteger(request.getParameter("pMaxLose"));
			String pDesc = request.getParameter("pDesc");
			String tName = request.getParameter("tName");

			String header = part.getHeader("Content-Disposition");
			String fileName = GetFileName.getFileName(header);
			String saveName = fileName;
			
			Policy policy = new Policy(pName, pMoney, pMinLose, pMaxLose, pDesc, tName, saveName);
			System.out.println(policyDao.updatePolicy(oldName,policy));
			Object uri = null;
			uri = "/admin/policycontrol.jsp";
			return uri;
		}else{
			response.getWriter().println("<script>alert('上传图片为空！');history.back();</script>") ;
		}
		return null;
	}

	Integer strToInteger(String str) {
		Integer i = null;
		if(str!=null){
		     i = Integer.valueOf(str);
		}
		return i;
	}
}
