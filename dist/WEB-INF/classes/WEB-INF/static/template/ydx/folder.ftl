<#include "header.ftl">
		<!---start-content---->
		<div class="content">
			<div class="wrap">
			<div class="clear"> </div>
			<div class="content-grids">
				<div class="specials-heading">
					<h5> </h5><h3>${folder.name} -- ${folder.ename}</h3><h5> </h5>
					<div class="clear"> </div>
				</div>
				<div class="clear"> </div>
				<@xm_article_page_tag folderId=folder.folderId p=1 rows="12">
				<#list tag_article_page.list as tag_article>
				<div class="grid <#if (tag_article_index + 1) % 3 == 0>last-grid</#if>">
					<a href="${WEB_URL}/article/${tag_article.articleId}.htm"><img src="${WEB_URL}/${tag_article.picture}" title="${tag_article.title}" /></a>
					<a href="${WEB_URL}/article/${tag_article.articleId}.htm"><h3>${tag_article.title}</h3></a>
					<p>${tag_article.summary}</p>
				</div>
				</#list>
				</@xm_article_page_tag>
				<div class="clear"> </div>
			</div>
			<div class="clear"> </div>
			</div>	
			<div class="clear"> </div>
		</div>
		<!---End-content---->
		<div class="clear"> </div>
<#include "footer.ftl">	