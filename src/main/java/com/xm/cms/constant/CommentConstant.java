/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.constant;

/**
 * 评论表的常量
 * 
 * @author Administrator
 * 
 */
public class CommentConstant {
	/**
	 * @author Herbert
	 * 
	 */
	public static enum Status {
		/**
		 * 隐藏
		 */
		hidden,
		/**
		 * 显示
		 */
		display,
		/**
		 * 垃圾
		 */
		trash
	};

	public static enum kind {
		/**
		 * 隐藏
		 */
		article,
		/**
		 * 显示
		 */
		folder
	};
}
