package com.wintelia.admin.adminController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/part")
public class PartViewsController {

	@RequestMapping("/top")
	public ModelAndView webTop(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.addObject("username", "管理员");
		model.setViewName("partviews/pagetop");
		return model;
	}

	@RequestMapping("/menu")
	public ModelAndView webmenu(HttpServletRequest request) {
		String viewName = request.getParameter("viewname");
		System.out.println("ViewName:" + viewName);
		ModelAndView model = new ModelAndView();
		model.addObject("viewName", viewName);
		model.setViewName("partviews/webmenu");
		return model;
	}

	@RequestMapping("/footer")
	public ModelAndView webfooter(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName("partviews/footer");
		return model;
	}

}
