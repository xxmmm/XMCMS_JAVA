<#include "header.ftl">
		<!---start-content---->
		<div class="content">
			<div class="wrap">
				<div class="about-us">
					<div class="about-header">
						<h5> </h5><h3>${folder.name}</h3><h5> </h5>
						<div class="clear"> </div>
					</div>
					<div class="about-info">
						<a href="#">${article.title}</a>
						<p>${article.content}</p>
					</div>
				</div>
			<div class="clear"> </div>
			<div class="specials">
					<div class="specials-heading">
						<h5> </h5><h3>热门景区推荐</h3><h5> </h5>
						<div class="clear"> </div>
					</div>
					<div class="clear"> </div>
					<div class="specials-grids">					
					<@xm_article_page_tag folderId=2 p=1 rows="3">
					<#list tag_article_page.list as tag_scenic>			
						<div class="special-grid <#if tag_scenic_index == 2>spe-grid</#if>">
							<img src="${WEB_URL}/${tag_scenic.picture}" title="tag_scenic.title" />
							<a href="<@xm_article_url_tag articleId=tag_scenic.articleId/>">${tag_scenic.title}</a>
							<p>${tag_scenic.summary}</p>
						</div>				
					</#list>			
					</@xm_article_page_tag>					
						<div class="clear"> </div>
					</div>
					<div class="clear"> </div>
			</div>
			</div>	
			<div class="clear"> </div>
			
		</div>
		<!---End-content---->
		<div class="clear"> </div>
<#include "footer.ftl">	