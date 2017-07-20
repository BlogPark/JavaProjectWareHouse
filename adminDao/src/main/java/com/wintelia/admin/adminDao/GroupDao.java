package com.wintelia.admin.adminDao;

import java.util.List;

import com.wintelia.admin.adminEntity.GroupModel;

public interface GroupDao {
	/** 添加分组 */
	public int AddGroup(GroupModel group);

	/**
	 * 根据ID查询分组信息
	 */
	public GroupModel GetGroupInfoByID(int ID);

	/** 查询所有的分组信息 */
	public List<GroupModel> GetAllGroups();

	/** 查询所有的在用的分组 */
	public List<GroupModel> GetAllUsedGroups();

	/** 修改分组的信息 */
	public int UpdateGroupInfo(GroupModel group);

	/** 修改分组的状态 */
	public int UpdateGroupStaus(int id, int statusnum);
}
