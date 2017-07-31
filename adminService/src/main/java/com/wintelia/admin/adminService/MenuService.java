package com.wintelia.admin.adminService;

import java.util.List;

import com.wintelia.admin.adminEntity.MenusModel;

public interface MenuService {

	/** 添加新菜单 */
	public int AddNewMenu(MenusModel model);

	/** 根据ID读取菜单详情 */
	public MenusModel GetMenuInfoByID(int ID);

	/** 根据ID修改菜单信息 */
	public int UpdateMenuInfoByID(MenusModel model);

	/** 根据ID修改菜单状态 */
	public int UpdateMenuStatusByID(int id, int statusnum);

	/** 得到所有的菜单 */
	public List<MenusModel> getAllMenus();

	/** 得到所有顶级菜单 */
	public List<MenusModel> GetAllTopMenus();

	/** 根据父级ID查询菜单 */
	public List<MenusModel> GetChildMenusByFatherID(int fatherid);
}
