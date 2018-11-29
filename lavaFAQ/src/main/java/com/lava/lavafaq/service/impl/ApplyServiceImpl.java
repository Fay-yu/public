package com.lava.lavafaq.service.impl;

import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lava.lavafaq.bean.Apply;
import com.lava.lavafaq.bean.Conference;
import com.lava.lavafaq.bean.Person;
import com.lava.lavafaq.canstants.Canstants;
import com.lava.lavafaq.dao.ApplyConMapper;
import com.lava.lavafaq.dao.ConMapper;
import com.lava.lavafaq.dao.PersonMapper;
import com.lava.lavafaq.servic.IApplyService;
import com.lava.lavafaq.servic.IConferenceService;
import com.lava.lavafaq.utils.MailUtils;

@Service("applyService")
public class ApplyServiceImpl implements IApplyService {
	private static Logger logger = Logger.getLogger(IConferenceService.class);
	@Autowired
	private ApplyConMapper appmapper;
	@Autowired
	private ConMapper conmapper;
	@Resource	
	private PersonMapper personMapper;

public String addApply(Apply con) {
		con.setApplystate(1L);//设置已提交
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	con.setApplytime(df.format(new Date()));
	if(!(appmapper.checktime(con)==null)&&appmapper.checktime(con).size()>0){
		return Canstants.checkTime;
	}
	if(appmapper.insert(con)==-1){
		return Canstants.saveFail;
	}else{
		Conference record = new Conference();
		record.setId(con.getCrmid());
		record.setCrmstate(1L);
		conmapper.updateCon(record);
		return Canstants.saveSuccess;
	}

}

	public List<Apply> findMyApply(Long userid) {
		List<Apply> list = new ArrayList<Apply>();
		list = this.appmapper.selectApplybyId(userid);
		return list;
	}
	//取消申请
	public String deleteConbyId(Long id) {
		if(this.appmapper.deleteById(id) == -1){
			logger.info("删除失败");
			return Canstants.deletefail;
		}else{
			return Canstants.deleteSuccess;
		}
	}

	public List<Apply> findApplyBycrmId(Long crmid) {
		List<Apply> list = new ArrayList<Apply>();
		list = this.appmapper.findApplyBycrmId(crmid);
		return list;
	}

	public List<Apply> findAllApply() {
		List<Apply> list = new ArrayList<Apply>();
		list = this.appmapper.selectAllApply();
		return list;
	}

	public Apply findApplyById(Long id) {
		Apply apply = new Apply();
		apply = this.appmapper.selectApplyBYId(id);
		return apply;
	}

	public String updateApply(Apply person) {
		if(this.appmapper.updateApply(person) == -1){
			logger.info("保存失败");
			return Canstants.applyFail;
		}else{
			if(person.getApplystate()==2){
				Person personEntity = personMapper.selectByPrimaryKey(person.getUserid());
				Apply applyEntity = appmapper.selectApplyBYId(person.getId());
				try {
					MailUtils.sendSuccessMail(personEntity, applyEntity);
				} catch (AddressException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return Canstants.applySuccess;
		}
	}
}
