/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.tag;

import static freemarker.template.ObjectWrapper.BEANS_WRAPPER;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xm.cms.entity.vo.HeadlineVo;
import com.xm.cms.plugin.TagPlugin;
import com.xm.cms.service.HeadlineService;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * @author Herbert
 * 
 */
@Service
public class HeadlineListTag extends TagPlugin {

	@Autowired
	private HeadlineService headlineService;

	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		// 获取页面的参数
		// 获取文件的分页
		List<HeadlineVo> headlineList = headlineService.getHeadlineList();
		env.setVariable("tag_headline_list", BEANS_WRAPPER.wrap(headlineList));
		body.render(env.getOut());
	}

}
