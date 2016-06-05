/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.tag;

import static freemarker.template.ObjectWrapper.BEANS_WRAPPER;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xm.cms.entity.Article;
import com.xm.cms.entity.Folder;
import com.xm.cms.exception.ArticleNotFoundException;
import com.xm.cms.exception.FolderNotFoundException;
import com.xm.cms.plugin.TagPlugin;
import com.xm.cms.service.ArticleService;
import com.xm.cms.service.FolderService;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * @author Administrator file标签
 */
@Service
public class ArticleTag extends TagPlugin {

	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private FolderService folderService;

	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		// 获取页面的参数
		Integer articleId = Integer
				.parseInt(params.get("articleId").toString());
		// 获取指定的文件
		try {
			Article article = articleService.getArticleById(articleId);
			Folder folder = folderService.getFolderById(article.getFolderId());
			env.setVariable("tag_folder", BEANS_WRAPPER.wrap(folder));
			env.setVariable("tag_article", BEANS_WRAPPER.wrap(article));
		} catch (ArticleNotFoundException e) {
			// TODO Auto-generated catch block
			env.setVariable("tag_article", BEANS_WRAPPER.wrap(null));
			e.printStackTrace();
		} catch (FolderNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			env.setVariable("tag_folder", BEANS_WRAPPER.wrap(null));
		}
		body.render(env.getOut());
	}
}
