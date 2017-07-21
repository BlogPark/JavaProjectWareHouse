package com.wintelia.admin.adminService;

import java.util.List;

import com.wintelia.admin.adminEntity.GroupModel;

public interface GroupService {

	public int AddGroups(GroupModel group);

	public List<GroupModel> GetAllGroupList();

	public GroupModel GetGroupInfoByID(int id);

	public int UpdateGroupInfo(GroupModel group);

	public List<GroupModel> GetAllUsedGroups();

	public int UpdateGroupStaus(int id, int statusnum);
}
