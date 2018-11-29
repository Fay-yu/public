package com.lava.lavafaq.dao;

import java.util.List;

import com.lava.lavafaq.bean.Conference;


public interface ConMapper {

    int insert(Conference record);
	//List<Person> selectAllPerson();

	List<Conference> selectAllConference();

	Conference selectBycrmName(String crmname);

	int deleteById(Long id);

	Conference selectById(Long id);
	
	int updateCon(Conference record);
}