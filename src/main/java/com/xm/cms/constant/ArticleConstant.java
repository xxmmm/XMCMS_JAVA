/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.constant;

/**
 * 文件常量
 * 
 * @author Zhang jiale
 * 
 */
public class ArticleConstant {

	/**
	 * 文件状态
	 * 
	 * @author Herbert
	 * 
	 */
	public static enum Status {
		/**
		 * 隐藏
		 */
		hidden, /**
		 * /** 公开的
		 */
		display,
	};

	/**
	 * 审核
	 * 
	 * @author Herbert
	 * 
	 */
	public static enum check {
		/**
		 * 已审核
		 */
		yes, /**
		 * /** 审核失败
		 */
		no, /**
		 * /** 未审核
		 */
		init,
	};
}
