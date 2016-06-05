/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexUtils {

	public static boolean isAlphaUnderline(String msg) {
		Pattern pattern = Pattern.compile("^[a-zA-Z0-9_]+$");
		Matcher matcher = pattern.matcher(msg);
		return matcher.matches();
	}

	public static void main(String[] args) {
		RegexUtils.isAlphaUnderline("ddd3_dd444美丽");
	}
}
