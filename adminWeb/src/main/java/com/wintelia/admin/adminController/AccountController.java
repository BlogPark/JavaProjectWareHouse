package com.wintelia.admin.adminController;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wintelia.admin.adminEntity.GroupModel;
import com.wintelia.admin.adminEntity.MenusModel;
import com.wintelia.admin.adminService.GroupService;
import com.wintelia.admin.adminService.MenuService;

@Controller
@RequestMapping("/admin")
public class AccountController {

	@Autowired
	private GroupService groupservice;
	@Autowired
	private MenuService menuservice;

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

	@RequestMapping("/menus")
	public ModelAndView webmenu(HttpServletRequest request) {
		List<MenusModel> menuslist = menuservice.getAllMenus();
		ModelAndView model = new ModelAndView();
		model.setViewName("webmenus");
		model.addObject("menulist", menuslist);
		return model;
	}

	@RequestMapping(value = "/addmenu", method = RequestMethod.POST)
	public ModelAndView addnewMenus(MenusModel model, int type, HttpServletRequest request) {
		if (type == 1) {
			System.out.println("新增");
		} else {
			System.out.println("修改");
		}
		ModelAndView modelandview = new ModelAndView();
		modelandview.setViewName("redirect:menus");
		return modelandview;
	}
}
