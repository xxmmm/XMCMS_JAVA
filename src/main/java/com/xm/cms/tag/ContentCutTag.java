/*
 *	Copyright © 2016 Shanghai XXMMM Network Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.tag;

import static freemarker.template.ObjectWrapper.BEANS_WRAPPER;

import java.io.IOException;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xm.cms.plugin.TagPlugin;
import com.xm.cms.service.ArticleService;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * @author Administrator file标签
 */
@Service
public class ContentCutTag extends TagPlugin {

	@Autowired
	private ArticleService articleService;

	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		// 获取页面的参数
		String content = params.get("content").toString();
		Integer num = Integer.parseInt(params.get("num").toString());
		content = Jsoup.clean(content, Whitelist.none());
		content = StringUtils.abbreviate(content, num);
		env.setVariable("tag_content", BEANS_WRAPPER.wrap(content));
		body.render(env.getOut());
	}
}
