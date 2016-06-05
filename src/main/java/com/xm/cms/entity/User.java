/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.entity;

import java.util.Date;

import com.xm.cms.constant.UserConstant;

/**
 * 用户实体
 * 
 * @author zsy
 * 
 */

public class User {

	/**
	 * 用户ID
	 */
	private long userId;

	/**
	 * 公共用户ID
	 */
	private long openId;

	/**
	 * 帐号类型
	 */
	private UserConstant.Type type;

	/**
	 * 用户名
	 */
	private String name;

	/**
	 * 时间
	 */
	private Date createTime;

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public long getOpenId() {
		return openId;
	}

	public void setOpenId(long openId) {
		this.openId = openId;
	}

	public UserConstant.Type getType() {
		return type;
	}

	public void setType(UserConstant.Type type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

}