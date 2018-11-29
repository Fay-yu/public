package com.lava.lavafaq.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lava.lavafaq.bean.Person;
import com.lava.lavafaq.canstants.Canstants;
import com.lava.lavafaq.servic.IPersonService;
import com.lava.lavafaq.utils.ResponseUtils;



@Controller  
@RequestMapping("/pages/personal")  
public class PersonalController {
	private static Logger logger = Logger.getLogger(PersonalController.class); 
	@Resource
	private IPersonService personService;
	
		
	
	   //进行更新个人资料
	@RequestMapping(value = "/updatePersonal",method = RequestMethod.POST) 
	@ResponseBody
       public Object updatePerson(Person person,HttpSession httpSession){ 
		
		 return ResponseUtils.sendSuccess(this.personService.updatePerson(person, httpSession));		
       }
	
	   //修改密码
	@RequestMapping(value = "/updatePassword", method = RequestMethod.POST)
	@ResponseBody
	public Object updatePassword(@RequestParam(value="repassword",required=false)String repassword,
			@RequestParam(value="newpassword",required=false)String newpassword,
			@RequestParam(value="id",required=false)Long id) {
		// return
		return ResponseUtils.sendSuccess(this.personService.updatePassWord(repassword,newpassword,id));
	}
	
}
