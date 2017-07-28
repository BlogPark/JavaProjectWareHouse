package com.wintelia.admin.adminController;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	public ModelAndView membergroups(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		List<GroupModel> list = groupservice.GetAllGroupList();
		String result = request.getParameter("result");
		model.setViewName("usergroup");
		model.addObject("grouplist", list);
		model.addObject("opresult", result);
		return model;
	}

	@RequestMapping("/addgroup")
	public ModelAndView addgroup(GroupModel group, Integer type, HttpServletRequest request) {
		group.setGroupAddTime(new Date());
		System.out.println(group.getGroupAlt());
		System.out.println(group.getGroupName());
		System.out.println(group.getID());
		System.out.println(type);
		int row = 0;
		if (type == 1)
			row = groupservice.AddGroups(group);
		else {
			row = groupservice.UpdateGroupInfo(group);
		}
		String operateResult = "操作成功";
		if (row < 1)
			operateResult = "操作失败";
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:groups");
		model.addObject("result", operateResult);
		return model;
	}
}
