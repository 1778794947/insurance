package dao;

import java.util.List;
import domain.ZInfo;

public interface ZInfoDao extends BaseDao {	
	int addZInfo(ZInfo zInfo); // 添加用户真实信息
	ZInfo getAppointZInfo(String zNumber);
	List<ZInfo> getAllZInfos();
}
