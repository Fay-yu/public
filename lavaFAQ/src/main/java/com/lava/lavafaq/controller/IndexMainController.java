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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lava.lavafaq.bean.Apply;
import com.lava.lavafaq.bean.Person;
import com.lava.lavafaq.canstants.Canstants;
import com.lava.lavafaq.servic.IApplyService;
import com.lava.lavafaq.servic.IPersonService;
import com.lava.lavafaq.utils.ResponseUtils;

@Controller
@RequestMapping("/pages/main")
public class IndexMainController {
	private static Logger logger = Logger.getLogger(LoginController.class);
	@Resource
	private IPersonService personService;
	@Resource
	private IApplyService applyService;

	// 跳转到用户主页
	@RequestMapping("/index")
	public String loginHtml() {

		return "index";
	}

	// 跳转到
	@RequestMapping("/widgets1")
	public String toWidgets1() {

		return "widgets1";
	}

	// 跳转到个人资料页面
	@RequestMapping("/personInf")
	public String toPersonInf() {

		return "updateInf";
	}

	// 跳转到管理员主页
	@RequestMapping("/admin")
	public String toAdmin() {

		return "admin";
	}

	// 跳转到修改密码界面
	@RequestMapping("/updatePassword")
	public String toupdatePassword() {

		return "ModPass";
	}

	// 退出系统
	@RequestMapping("/quit")
	public String toquit(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/pages/login/loginHtml";
	}

	// 跳转到查看用户
	@RequestMapping("/chackUser")
	public String toChackUser(HttpSession request) {
		List<Person> list = personService.findAllPerson();
		request.setAttribute("list", list);
		return "checkUser";
	}

	// ceshi
	@RequestMapping("/test")
	public String toTest(HttpServletRequest request) {
		System.out.println(request.getParameter("id"));

		return "checkUser";
	}
	
	// 跳转日历
	@RequestMapping("/toCla")
	public String toCla(HttpServletRequest request) {

		return "calendar";
	}
	
	// 跳转首页
	@RequestMapping("/toSupport")
	public String toSupport(HttpServletRequest request) {

		return "support";
	}
	
	
	@RequestMapping("/GrantUser")
	public String toGrantUser(HttpSession request) {
		List<Person> list = personService.findAllPerson();
		request.setAttribute("list", list);
		return "GrantUser";
	}

	// 跳转查看预约
	@RequestMapping("/toAllApply")
	public String toAllApply(HttpSession request) {
		List<Apply> list = this.applyService.findAllApply();
		request.setAttribute("mylist", list);
		return "checkAllApply";
	}
	
	
	// 跳转查看详细预约
	@RequestMapping("/toApplyCon")
	public String toApplyCon(HttpSession request,
			@RequestParam(value = "id", required = false) Long id) {
		Apply apply = this.applyService.findApplyById(id);
		request.setAttribute("apply", apply);
		return "checkApplyDetail";
	}
	
	//同意预约
	@RequestMapping("/agreeApply")
	@ResponseBody
	private Object register(Apply person){
		person.setApplystate(2L);
	   return ResponseUtils.sendSuccess(this.applyService.updateApply(person));		 
	}
	//同意预约
	@RequestMapping("/refuse")
	@ResponseBody
	private Object refuseApply(Apply person){
		person.setApplystate(3L);
	   return ResponseUtils.sendSuccess(this.applyService.updateApply(person));		 
	}
	
	// 跳转查看详细预约
	@RequestMapping("/Grant")
	public String Grant(HttpSession request,
			@RequestParam(value = "id", required = false) Long id) {
		Person personEntity = new Person();
		personEntity.setId(id);
		personEntity.setPower(1L);
		this.personService.updatePersonPower(personEntity);
		return "redirect:/pages/main/GrantUser";
	}
	
}
