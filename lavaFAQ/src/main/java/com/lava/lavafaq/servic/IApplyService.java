package com.lava.lavafaq.servic;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.lava.lavafaq.bean.Apply;
import com.lava.lavafaq.bean.Conference;


public interface IApplyService {
	public String addApply(Apply con);

	public List<Apply> findMyApply(Long userid);
	
	public Apply findApplyById(Long id);
	
	public List<Apply> findApplyBycrmId(Long crmid);
	
	public String deleteConbyId(Long id);

	public List<Apply> findAllApply();

	public String updateApply(Apply person);
}
