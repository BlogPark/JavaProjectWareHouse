package com.wintelia.admin.adminDao;

import java.util.List;

import com.wintelia.admin.adminEntity.AuthorityModel;

public interface AuthorityDao {
	/** 添加新权限 */
	public int AddNewAuthority(AuthorityModel model);

	/** 根据分组查询所有的权限菜单 */
	public List<AuthorityModel> GetAuthoritesByGroupID(int groupid);

	/** 根据分组和菜单更改状态 */
	public int UpdateAuthorityStatus(int groupid, int menuid, int statusnum);

	/** 根据ID更改状态 */
	public int UpdateAuthorityStatusByID(int id, int statusnum);
}
