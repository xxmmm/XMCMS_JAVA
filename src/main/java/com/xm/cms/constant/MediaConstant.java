/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.constant;

/**
 * 附件
 * 
 * @author Herbert
 * 
 */
public class MediaConstant {

	/**
	 * 类型<br>
	 * photo：照片<br>
	 * file：文件<br>
	 * 
	 * @author Herbert
	 * 
	 */
	public static enum Type {
		/**
		 * 相册
		 */
		photo, /**
		 * 文件
		 */
		file, video
	}

	/**
	 * 种类
	 * 
	 * @author Herbert
	 * 
	 */
	public static enum Kind {
		/**
		 * 目录
		 */
		folder, /**
		 * 文章
		 */
		article, /**
		 * 编辑器
		 */
		editor
	}
}
