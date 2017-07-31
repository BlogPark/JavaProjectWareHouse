package com.wintelia.admin.adminService.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wintelia.admin.adminDao.AuthorityDao;
import com.wintelia.admin.adminEntity.AuthorityModel;
import com.wintelia.admin.adminService.AuthorityService;

@Service("authorityservice")
public class AuthorityServiceImpl implements AuthorityService {

	@Autowired
	private AuthorityDao authorityDao;

	public int AddNewAuthority(AuthorityModel model) {
		return authorityDao.AddNewAuthority(model);
	}

	public List<AuthorityModel> GetAuthoritesByGroupID(int groupid) {
		return authorityDao.GetAuthoritesByGroupID(groupid);
	}

	public int UpdateAuthorityStatus(int groupid, int menuid, int statusnum) {
		return authorityDao.UpdateAuthorityStatus(groupid, menuid, statusnum);
	}

	public int UpdateAuthorityStatusByID(int id, int statusnum) {
		return authorityDao.UpdateAuthorityStatusByID(id, statusnum);
	}

}
