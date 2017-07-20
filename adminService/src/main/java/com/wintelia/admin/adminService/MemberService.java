package com.wintelia.admin.adminService;

import com.wintelia.admin.adminEntity.MemberModel;

public interface MemberService {
	/** 会员登陆 */
	public String UserLogin(String username, String password);

	public int AddMemberINfo(MemberModel member);

	public MemberModel GetMemberByUserName(String username);
}
