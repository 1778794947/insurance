
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="application/x-msdownload" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
    //关于文件下载时采用文件流输出的方式处理：
    
    response.setContentType("application/x-download");
    String fileDownloadName = "F:/Working/eclipse-workspace/javaWebTest/Insurance/WebContent/client/upload/"+request.getParameter("fileDownloadName"); // 下载的文件的物理路径＋文件名
    String fileDisplayName = String.valueOf(System.currentTimeMillis())+fileDownloadName.substring(fileDownloadName.lastIndexOf("."),fileDownloadName.length()); // 给用户提供的下载文件名
    fileDisplayName = URLEncoder.encode(fileDisplayName, "UTF-8");
    response.addHeader("Content-Disposition", "attachment;filename=" + fileDisplayName);
    OutputStream outp = null;
    FileInputStream in = null;
    try {
        outp = response.getOutputStream();
        in = new FileInputStream(fileDownloadName);
        byte[] b = new byte[1024];
        int i = 0;
        while ((i = in.read(b)) > 0) {
            outp.write(b, 0, i);
        }
        outp.flush();
    } catch (Exception e) {
        System.out.println("文件下载失败!");
        e.printStackTrace();
    } finally {
        if (in != null) {
            in.close();
            in = null;
        }
        if (outp != null) {
            outp.close();
            outp = null;
            out.clear();
            out = pageContext.pushBody();
        }
    }
%>
</body>
</html>