package com.lava.lavafaq.servic;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.lava.lavafaq.bean.Conference;
import com.lava.lavafaq.bean.Person;


public interface IConferenceService {
	public String addConference(Conference con);

	public List<Conference> findAllConference();

	public String deleteConbyId(Long id);

	public Conference findConferencebyId(Long id);
	
	public String updateConference(Conference con);
	
}
