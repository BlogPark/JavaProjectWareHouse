package com.wintelia.admin.adminController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wintelia.admin.adminEntity.MemberModel;
import com.wintelia.admin.adminEntity.UserLoginModel;
import com.wintelia.admin.adminService.MemberService;

@Controller
public class HomeController {

	@Autowired
	private MemberService memberservice;

	@RequestMapping("/index")
	public ModelAndView IndexPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("index2");
		return model;
	}

	@RequestMapping("/index2")
	public ModelAndView Index2Page() {
		ModelAndView model = new ModelAndView();
		model.setViewName("index3");
		return model;
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		return model;
	}

	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public ModelAndView userlogin(UserLoginModel user, HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		String loginresult = memberservice.UserLogin(user.getUsername(), user.getUsername());
		if (loginresult == "1") {
			MemberModel member = memberservice.GetMemberByUserName(user.getUsername());
			request.getSession().setAttribute("currentuser", member);
			model.setViewName("index2");
		} else {
			model.setViewName("login");

		}
		return model;
	}
}
