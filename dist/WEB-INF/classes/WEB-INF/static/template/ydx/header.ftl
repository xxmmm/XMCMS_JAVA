<!DOCTYPE HTML>
	<head>
    <meta charset="utf-8"/>
		<title>云端行-关于我们</title>
		<link href="${TEMPLATE_BASE_PATH}/css/style.css" rel="stylesheet" type="text/css"  media="all" />	</head>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<!---start-logo---->
				<div class="logo">
					<a href="index.html"><img src="${TEMPLATE_BASE_PATH}/images/logo.png" title="logo" /></a>
				</div>
				<!---End-logo---->
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<!--<li class="active"><a href="index.html">首页</a></li>
						<li><a href="about.html">关于我们</a></li>-->
						
				<@xm_folder_list_tag folderId= 0>
						<li class="blog-nav-item <#if 0==g_folderId>active</#if>"><a href="${BASE_PATH}/index.htm">首页</a></li>
	                <#list tag_folder_list as tag_folder>
	                	<li class="blog-nav-item <#if tag_folder.folderId==g_folderId>active</#if>"><a href="<#if tag_folder.folderId == 7><@xm_article_url_tag articleId=15/><#elseif tag_folder.folderId == 8><@xm_contact_url_tag articleId=16/><#else><@xm_folder_url_tag folderId=tag_folder.folderId/></#if>">${tag_folder.name}</a></li>
	                </#list>
           		</@xm_folder_list_tag>	
					</ul>
				</div>
				<div class="clear"> </div>
				<!---End-top-nav---->
			</div>
			<!---End-header---->
		</div>
		<!---End-wrap---->
		<div class="clear"> </div>