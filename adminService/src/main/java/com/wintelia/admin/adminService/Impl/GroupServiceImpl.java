package com.wintelia.admin.adminService.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wintelia.admin.adminDao.GroupDao;
import com.wintelia.admin.adminEntity.GroupModel;
import com.wintelia.admin.adminService.GroupService;

@Service("groupservice")
public class GroupServiceImpl implements GroupService {

	@Autowired
	private GroupDao groupDao;

	public int AddGroups(GroupModel group) {
		return groupDao.AddGroup(group);
	}

	public List<GroupModel> GetAllGroupList() {
		return groupDao.GetAllGroups();
	}

	public GroupModel GetGroupInfoByID(int id) {
		return groupDao.GetGroupInfoByID(id);
	}

	public int UpdateGroupInfo(GroupModel group) {
		return groupDao.UpdateGroupInfo(group);
	}

	public List<GroupModel> GetAllUsedGroups() {
		return groupDao.GetAllUsedGroups();
	}

	public int UpdateGroupStaus(int id, int statusnum) {
		return groupDao.UpdateGroupStaus(id, statusnum);
	}

}
