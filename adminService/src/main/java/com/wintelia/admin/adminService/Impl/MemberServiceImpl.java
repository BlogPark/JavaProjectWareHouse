package com.wintelia.admin.adminService.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wintelia.admin.adminDao.MemberDao;
import com.wintelia.admin.adminEntity.MemberModel;
import com.wintelia.admin.adminService.MemberService;

@Service("memberservice")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;

	/**
	 * 登录接口 返回状态 若为数字则表示成功
	 */
	public String UserLogin(String username, String password) {
		MemberModel member = memberDao.GetMemberInfoByUserName(username);
		if (member == null) {
			return "该用户名不存在！";
		} else {
			if (!member.getMemberPassword().equals(password)) {
				return "输入密码不正确！";
			}
			if (member.getMemberStatus() > 1) {
				return "该用户已被注销！";
			}
			return String.valueOf(member.getID());
		}
	}

	/**
	 * 添加会员信息
	 */
	public int AddMemberINfo(MemberModel member) {
		int rowid = memberDao.AddMember(member);
		return rowid;
	}

	/** 查询会员信息 */
	public MemberModel GetMemberByUserName(String username) {
		return memberDao.GetMemberInfoByUserName(username);
	}

}
