package com.wintelia.admin.adminEntity;

import java.util.Date;

/**
 * 菜单模型
 */
public class MenusModel {

	private int mID;
	private String mName;
	private int mFatherID;
	private String mFatherName;
	private String mAlt;
	private String mController;
	private String mAction;
	private String mLinkUrl;
	private int mStatus;
	private Date mAddTime;
	private String mIconName;

	public int getmID() {
		return mID;
	}

	public void setmID(int mID) {
		this.mID = mID;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public int getmFatherID() {
		return mFatherID;
	}

	public void setmFatherID(int mFatherID) {
		this.mFatherID = mFatherID;
	}

	public String getmFatherName() {
		return mFatherName;
	}

	public void setmFatherName(String mFatherName) {
		this.mFatherName = mFatherName;
	}

	public String getmAlt() {
		return mAlt;
	}

	public void setmAlt(String mAlt) {
		this.mAlt = mAlt;
	}

	public String getmController() {
		return mController;
	}

	public void setmController(String mController) {
		this.mController = mController;
	}

	public String getmAction() {
		return mAction;
	}

	public void setmAction(String mAction) {
		this.mAction = mAction;
	}

	public String getmLinkUrl() {
		return mLinkUrl;
	}

	public void setmLinkUrl(String mLinkUrl) {
		this.mLinkUrl = mLinkUrl;
	}

	public int getmStatus() {
		return mStatus;
	}

	public void setmStatus(int mStatus) {
		this.mStatus = mStatus;
	}

	public Date getmAddTime() {
		return mAddTime;
	}

	public void setmAddTime(Date mAddTime) {
		this.mAddTime = mAddTime;
	}

	public String getmIconName() {
		return mIconName;
	}

	public void setmIconName(String mIconName) {
		this.mIconName = mIconName;
	}

}
