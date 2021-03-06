/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.action;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xm.cms.entity.Folder;
import com.xm.cms.entity.vo.ArticleVo;

/**
 * @author Herbert
 * 
 */
@Controller
@RequestMapping("/contact")
public class ContactAction extends BaseAction {

	@RequestMapping(value = "/{articleId}.htm", method = RequestMethod.GET)
	public String contact(@PathVariable long articleId,
			@RequestParam(value = "p", defaultValue = "1") long p,
			ModelMap modelMap) {
		try {
			ArticleVo article = fileService.getArticleById(articleId);
			Folder folder = folderService.getFolderById(article.getFolderId());
			modelMap.addAttribute("p", p);
			modelMap.addAttribute("folder", folder);
			modelMap.addAttribute("article", article);
			modelMap.addAttribute("g_folderId", folderService.firstFolderId(folder.getFolderId()));
			return themeService.getContactTemplate(article.getFolderId(),
					articleId);
		} catch (Exception e) {
			modelMap.addAttribute("g_folderId", 0);
			return themeService.get404();
		}
	}
}
