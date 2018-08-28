package dao;

import java.util.List;

import domain.BReply;

public interface BReplyDao extends BaseDao {
	int addReply(BReply bReply);
	List<BReply> getAppointRegBReplys(String uName);
	int updateBReply(String pName,String zName,BReply bReply); // 更新信息
}
