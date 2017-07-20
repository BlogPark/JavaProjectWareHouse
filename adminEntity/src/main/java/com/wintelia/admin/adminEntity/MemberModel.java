package com.wintelia.admin.adminEntity;

import java.util.Date;

public class MemberModel {
	private int ID;
	private String memberName;
	private String memberPassword;
	private String memberTruthName;
	private int memberGroupID;
	private String memberGroupName;
	private int memberStatus;
	private Date memberAddTime;
	private String memberEmail;

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberTruthName() {
		return memberTruthName;
	}

	public void setMemberTruthName(String memberTruthName) {
		this.memberTruthName = memberTruthName;
	}

	public int getMemberGroupID() {
		return memberGroupID;
	}

	public void setMemberGroupID(int memberGroupID) {
		this.memberGroupID = memberGroupID;
	}

	public String getMemberGroupName() {
		return memberGroupName;
	}

	public void setMemberGroupName(String memberGroupName) {
		this.memberGroupName = memberGroupName;
	}

	public int getMemberStatus() {
		return memberStatus;
	}

	public void setMemberStatus(int memberStatus) {
		this.memberStatus = memberStatus;
	}

	public Date getMemberAddTime() {
		return memberAddTime;
	}

	public void setMemberAddTime(Date memberAddTime) {
		this.memberAddTime = memberAddTime;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
}
