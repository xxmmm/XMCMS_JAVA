/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.exception;

/**
 * 
 * 系统配置Key获得的Value为空
 * 
 * @author Herbert
 * 
 */
public class AdminLoginException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public AdminLoginException(String msg) {
		super(msg);
	}
}
