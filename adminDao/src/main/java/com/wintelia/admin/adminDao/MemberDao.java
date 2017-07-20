package com.wintelia.admin.adminDao;

import java.util.List;

import com.wintelia.admin.adminEntity.MemberModel;

public interface MemberDao {
	/** 添加新会员 */
	public int AddMember(MemberModel member);

	/** 根据ID查询会员信息 */
	public MemberModel GetMemberInfoByID(int ID);

	/** 根据会员名查询会员信息 */
	public MemberModel GetMemberInfoByUserName(String username);

	/** 根据真实姓名查询会员信息 */
	public List<MemberModel> GetMemberInfoByTurthName(String turthname);

	/** 分页查询所有的会员信息 */
	public List<MemberModel> GetAllMemberListByPage(int page, int pagesize);

	/** 根据ID更新会员信息 */
	public int UpdateMemberInfoByID(MemberModel member);

	/** 根据ID更新会员状态 */
	public int UpdateMemberStatusByID(int ID, int statusnum);

	/** 根据查询条件分页查询数据 */
	public List<MemberModel> GetMemberListByWhere(String where, int page, int pagesize);
}
