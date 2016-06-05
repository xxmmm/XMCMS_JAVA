/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.exception;

/**
 * 
 * 目录没有发现异常
 * 
 * @author Herbert
 * 
 */
public class ArticleNotFoundException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ArticleNotFoundException(String msg) {
		super(msg);
	}
}
