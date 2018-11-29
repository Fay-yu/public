package com.lava.lavafaq.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lava.lavafaq.bean.Conference;
import com.lava.lavafaq.bean.Person;
import com.lava.lavafaq.canstants.Canstants;
import com.lava.lavafaq.servic.IConferenceService;
import com.lava.lavafaq.servic.IPersonService;
import com.lava.lavafaq.utils.ResponseUtils;



@Controller  
@RequestMapping("/pages/con")  
public class ConferenceController {
	private static Logger logger = Logger.getLogger(ConferenceController.class); 
	@Resource
	private IConferenceService conService;

	 //跳转添加会议室
	   @RequestMapping("/addcon")  
       public String toChackUser(){ 
		   return "addConference";	  
       }
	   //添加会议室
	   @RequestMapping("/addroom") 
		@ResponseBody
	       public Object updatePerson(Conference con,HttpSession httpSession){ 
		   System.out.println(con.getCrmname());
			 return ResponseUtils.sendSuccess(this.conService.addConference(con));		
	       }
	   //修改会议室
	   @RequestMapping("/updateroom") 
		@ResponseBody
	       public Object updateCon(Conference con,HttpSession httpSession){ 
			 return ResponseUtils.sendSuccess(this.conService.updateConference(con));		
	       }
	 //跳转查看会议室
	   @RequestMapping("/tocheckCon")  
       public String toCheckCon(HttpSession request){ 
		  List<Conference> list = this.conService.findAllConference();
		  request.setAttribute("list", list);
		   return "checkConference";	  
       }
	   
	   //跳转修改会议室页面
	   @RequestMapping("/modcon")  
       public String toModcon(HttpSession request){ 
		  List<Conference> list = this.conService.findAllConference();
		  request.setAttribute("list", list);
		   return "ModConference";	  
       }
	   
	   //跳转详细会议室
	   @RequestMapping("/modifyCon")  
	   public String Modcon(HttpSession request,@RequestParam(value="id",required=false)Long id){ 
		   System.out.println(id);
		   Conference list = this.conService.findConferencebyId(id);
			  request.setAttribute("list", list);
			   return "updateConference";	  
	       }
	   //删除会议室
	   @RequestMapping(value = "/deleteCon",method = RequestMethod.GET) 
	       public String deleteCon(@RequestParam(value="id",required=false)Long id,HttpSession request){ 
		   String ide = this.conService.deleteConbyId(id);
		   if(ide.equals(Canstants.deletefail)){
			   return "Delete Fail!!!";
		   }else{
			   request.setAttribute("result", "删除成功");
			   return "redirect:/pages/con/tocheckCon";	
		   }
			
	       }
}
