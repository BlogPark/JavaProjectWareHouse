package com.wintelia.admin.adminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wintelia.admin.adminEntity.GroupModel;
import com.wintelia.admin.adminService.GroupService;

@Controller
@RequestMapping("/admin")
public class AccountController {

	@Autowired
	private GroupService groupservice;

	@RequestMapping("/groups")
	public ModelAndView membergroups() {
		ModelAndView model = new ModelAndView();
		List<GroupModel> list = groupservice.GetAllGroupList();
		model.setViewName("usergroup");
		model.addObject("grouplist", list);
		return model;
	}
}
