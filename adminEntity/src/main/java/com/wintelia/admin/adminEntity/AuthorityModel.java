package com.wintelia.admin.adminEntity;

import java.util.Date;

public class AuthorityModel {
	private int ID;
	private int groupID;
	private String groupName;
	private int menuID;
	private String menuName;
	private int authorStatus;
	private Date authorTime;

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getGroupID() {
		return groupID;
	}

	public void setGroupID(int groupID) {
		this.groupID = groupID;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public int getMenuID() {
		return menuID;
	}

	public void setMenuID(int menuID) {
		this.menuID = menuID;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getAuthorStatus() {
		return authorStatus;
	}

	public void setAuthorStatus(int authorStatus) {
		this.authorStatus = authorStatus;
	}

	public Date getAuthorTime() {
		return authorTime;
	}

	public void setAuthorTime(Date authorTime) {
		this.authorTime = authorTime;
	}
}
