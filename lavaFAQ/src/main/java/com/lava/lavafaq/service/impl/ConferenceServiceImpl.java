package com.lava.lavafaq.service.impl;



import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lava.lavafaq.bean.Apply;
import com.lava.lavafaq.bean.Conference;
import com.lava.lavafaq.bean.Person;
import com.lava.lavafaq.canstants.Canstants;
import com.lava.lavafaq.dao.ApplyConMapper;
import com.lava.lavafaq.dao.ConMapper;
import com.lava.lavafaq.servic.IConferenceService;

@Service("conService")
public class ConferenceServiceImpl implements IConferenceService {
private static Logger logger = Logger.getLogger(IConferenceService.class); 
@Autowired
 private ConMapper conMapper;
@Autowired
private ApplyConMapper appmapper;
//添加会议室
public String addConference(Conference con) {
	con.setCrmstate(0L);
	if(null != conMapper.selectBycrmName(con.getCrmname())){
		return Canstants.addConferencefail;
	}
	if(this.conMapper.insert(con) == -1){
		logger.info("保存失败");
		return Canstants.saveFail;
	}else{
		return Canstants.saveSuccess;
	}
}
//查看会议室信息
public List<Conference> findAllConference() {
	List<Conference> list = new ArrayList<Conference>();
	list = this.conMapper.selectAllConference();
	//查看会议室是否有预约
	for(Conference con:list){
		List<Apply> list1 = appmapper.findApplyBycrmId(con.getId());
		if(list1.size()==0){
			con.setCrmstate(0L);
			conMapper.updateCon(con);
		}
	}
	
	return list;
}
//删除会议室
public String deleteConbyId(Long id) {
	if(this.conMapper.deleteById(id) == -1){
		logger.info("删除失败");
		return Canstants.deletefail;
	}else{
		return Canstants.deleteSuccess;
	}
}
//查找会议室
public Conference findConferencebyId(Long id) {
	Conference con = this.conMapper.selectById(id);
	return con;
}
//修改会议室
public String updateConference(Conference con) {
	Conference conEntity =conMapper.selectById(con.getId());
	if(!conEntity.getCrmname().equals(con.getCrmname())){
		if(null != conMapper.selectBycrmName(con.getCrmname())){
			return Canstants.addConferencefail;
		}
	}
	if(this.conMapper.updateCon(con) == -1){
		logger.info("保存失败");
		return Canstants.saveFail;
	}else{
		return Canstants.saveSuccess;
	}
}
 
}
