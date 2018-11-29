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

import com.lava.lavafaq.bean.Apply;
import com.lava.lavafaq.bean.Conference;
import com.lava.lavafaq.bean.Person;
import com.lava.lavafaq.canstants.Canstants;
import com.lava.lavafaq.servic.IApplyService;
import com.lava.lavafaq.servic.IConferenceService;
import com.lava.lavafaq.servic.IPersonService;
import com.lava.lavafaq.utils.ResponseUtils;

@Controller
@RequestMapping("/pages/user")
public class UserOperController {
	private static Logger logger = Logger.getLogger(UserOperController.class);
	@Resource
	private IConferenceService conService;
	@Resource
	private IApplyService applyService;

	// 跳转查看会议室
	@RequestMapping("/tocheckcon")
	public String toChackUser(HttpSession request) {
		List<Conference> list = this.conService.findAllConference();
		request.setAttribute("list", list);
		return "checkConferenceUser";
	}

	// 跳转添加申请
	@RequestMapping("/toAddApply")
	public String toaddApple(HttpSession request) {
		List<Conference> list = this.conService.findAllConference();
		request.setAttribute("list", list);
		return "addApply";
	}

	// 跳转添加申请
	@RequestMapping("/toaddList")
	public String toaddList(HttpSession request) {
		return "addApplyList";
	}

	// 添加申请
	@RequestMapping(value = "/addApplyUser", method = RequestMethod.GET)
	public String deleteCon(
			@RequestParam(value = "id", required = false) Long id,
			HttpSession request,
			@RequestParam(value = "userid", required = false) Long userid) {
		Conference con = this.conService.findConferencebyId(id);
		request.setAttribute("con", con);

		return "addApplyList";
	}

	// 添加申请
	@RequestMapping("/addUserApply")
	@ResponseBody
	private Object login(Apply apply, HttpSession httpSession) {
		return ResponseUtils.sendSuccess(this.applyService.addApply(apply));
	}

	// 跳转查看预约
	@RequestMapping("/toMyApply")
	public String toMyApply(HttpSession request,
			@RequestParam(value = "userid", required = false) Long userid) {
		List<Apply> list = this.applyService.findMyApply(userid);
		request.setAttribute("mylist", list);
		return "checkMyApply";
	}

	// 跳转查看预约
	@RequestMapping("/toAllApply")
	public String toAllApply(HttpSession request,@RequestParam(value = "crmid", required = false) Long crmid) {
		List<Apply> list = this.applyService.findApplyBycrmId(crmid);
		request.setAttribute("mylist", list);
		return "checkCrmApplyUser";
	}

	// 删除申请
	@RequestMapping(value = "/deleteApply", method = RequestMethod.GET)
	public String deleteCon(
			@RequestParam(value = "id", required = false) Long id,
			@RequestParam(value = "userid", required = false) Long userid,
			HttpSession request) {
		String ide = this.applyService.deleteConbyId(id);
		if (ide.equals(Canstants.deletefail)) {
			return "Delete Fail!!!";
		} else {
			request.setAttribute("result", "删除成功");
			return "redirect:/pages/user/toMyApply?userid="+userid;
		}

	}
	
	// 完成会议室
	@RequestMapping(value = "/updateApply", method = RequestMethod.GET)
	public String updateApply(
			@RequestParam(value = "id", required = false) Long id,
			@RequestParam(value = "userid", required = false) Long userid,
			HttpSession request) {
		Apply apply = new Apply();
		apply.setApplystate(4L);
		apply.setId(id);
		String ide = this.applyService.updateApply(apply);
		if (ide.equals(Canstants.deletefail)) {
			return "Delete Fail!!!";
		} else {
			request.setAttribute("result", "已完成此次申请");
			return "redirect:/pages/user/toMyApply?userid="+userid;
		}

	}
}
