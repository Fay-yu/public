package com.lava.lavafaq.servic;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.lava.lavafaq.bean.Person;


public interface IPersonService {
	public String registerPerson(Person person);
	
	public String loginPerson(Person person,HttpSession httpSession);

	public boolean activatEmail(Person person);

	public String updatePerson(Person person,HttpSession httpSession);
	
	public String updatePassWord(String repassword,String newpassword,Long id);
	
	public List<Person> findAllPerson();

	public void updatePersonPower(Person personEntity);

	
}
