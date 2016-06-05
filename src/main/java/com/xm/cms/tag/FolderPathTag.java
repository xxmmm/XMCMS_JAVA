/*
 *	Copyright © 2013 Shanghai Xiaoming Infomation Technology Co., Ltd. All rights reserved.
 *	上海啸明信息科技有限公司 版权所有
 *	http://www.xxmmm.com
 */

package com.xm.cms.tag;

import static freemarker.template.ObjectWrapper.DEFAULT_WRAPPER;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xm.cms.entity.vo.FolderVo;
import com.xm.cms.exception.FolderNotFoundException;
import com.xm.cms.plugin.TagPlugin;
import com.xm.cms.service.FolderService;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * folder标签
 * 
 * @author lqq
 * 
 */
@Service
public class FolderPathTag extends TagPlugin {
	@Autowired
	private FolderService folderService;

	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {

		// 获取页面的参数
		Integer folderId = Integer.parseInt(params.get("folderId").toString());

		try {
			// 获得目录列表
			List<FolderVo> list = folderService
					.getFolderPathListByFolderId(folderId);
			env.setVariable("tag_folder_path", DEFAULT_WRAPPER.wrap(list));
		} catch (FolderNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		body.render(env.getOut());
	}

}
