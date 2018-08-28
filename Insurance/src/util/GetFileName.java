package util;

/**
 * @ClassName:  GetFileName   
 * @Description:TODO(获取各个浏览器下的上传文件名)
 * @author: meijianhua 
 * @date:   2018年7月15日 下午7:13:43
 */
public class GetFileName {
	public static String getFileName(String header) {
		String[] arr1 = header.split(";");
		String[] arr2 = arr1[2].split("=");
		String fileName = arr2[1].substring(arr2[1].lastIndexOf("\\") + 1).replaceAll("\"", "");
		return fileName;
	}
}
