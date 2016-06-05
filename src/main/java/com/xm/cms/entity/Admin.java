/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.entity;

import java.util.Date;

/**
 * 管理员实体
 * 
 * @author Administrator
 * 
 */

public class Admin {

	/**
	 * 管理员Id
	 */
	private long adminId;

	/**
	 * 管理员名称
	 */
	private String name;

	/**
	 * 密码
	 */
	private String password;

	/**
	 * 时间
	 */
	private Date createTime;

	public long getAdminId() {
		return adminId;
	}

	public void setAdminId(long adminId) {
		this.adminId = adminId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

}
