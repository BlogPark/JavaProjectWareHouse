package com.wintelia.admin.adminService.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wintelia.admin.adminDao.MenuDao;
import com.wintelia.admin.adminEntity.MenusModel;
import com.wintelia.admin.adminService.MenuService;

@Service("menuservice")
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuDao menudao;

	public int AddNewMenu(MenusModel model) {

		return menudao.AddNewMenu(model);
	}

	public MenusModel GetMenuInfoByID(int ID) {
		return menudao.GetMenuInfoByID(ID);
	}

	public int UpdateMenuInfoByID(MenusModel model) {
		return menudao.UpdateMenuInfoByID(model);
	}

	public int UpdateMenuStatusByID(int id, int statusnum) {
		return menudao.UpdateMenuStatusByID(id, statusnum);
	}

	public List<MenusModel> getAllMenus() {
		return menudao.getAllMenus();
	}

	public List<MenusModel> GetAllTopMenus() {
		return menudao.GetAllTopMenus();
	}

	public List<MenusModel> GetChildMenusByFatherID(int fatherid) {
		return menudao.GetChildMenusByFatherID(fatherid);
	}

}
