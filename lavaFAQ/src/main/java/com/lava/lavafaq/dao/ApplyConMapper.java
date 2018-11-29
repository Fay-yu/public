package com.lava.lavafaq.dao;

import java.util.List;

import com.lava.lavafaq.bean.Apply;
import com.lava.lavafaq.bean.Conference;


public interface ApplyConMapper {
	  int insert(Apply record);
		//List<Person> selectAllPerson();

	List<Apply> checktime(Apply con);

	void updateState(Apply con);

	List<Apply> selectApplybyId(Long userid);

	int deleteById(Long id);

	List<Apply> findApplyBycrmId(Long id);

	List<Apply> selectAllApply();

	Apply selectApplyBYId(Long id);

	int updateApply(Apply person);
	
	
}
