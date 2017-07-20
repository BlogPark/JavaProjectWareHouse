package com.wintelia.admin.adminEntity;

import java.util.Date;

public class GroupModel {
	private int ID;
	private String groupName;
	private String groupAlt;
	private int groupStatus;
	private Date groupAddTime;

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getGroupAlt() {
		return groupAlt;
	}

	public void setGroupAlt(String groupAlt) {
		this.groupAlt = groupAlt;
	}

	public int getGroupStatus() {
		return groupStatus;
	}

	public void setGroupStatus(int groupStatus) {
		this.groupStatus = groupStatus;
	}

	public Date getGroupAddTime() {
		return groupAddTime;
	}

	public void setGroupAddTime(Date groupAddTime) {
		this.groupAddTime = groupAddTime;
	}
}
