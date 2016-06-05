<!DOCTYPE HTML><head>
<meta charset="utf-8"/>
		<title>Home</title>
		<link href="${TEMPLATE_BASE_PATH}/css/style.css" rel="stylesheet" type="text/css"  media="all" />	</head>
		
	<link rel="stylesheet" href="${TEMPLATE_BASE_PATH}/css/responsiveslides.css">
		<script src="${TEMPLATE_BASE_PATH}/js/jquery-1.8.3.min.js"></script>
		<script src="${TEMPLATE_BASE_PATH}/js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 2500,
			        speed: 600
			      });
			});
		  </script>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<!---start-logo---->
				<div class="logo">
					<a href="index.html"><img src="${TEMPLATE_BASE_PATH}/images/logo.png" title="云端行" /></a>
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
		<!--start-image-slider---->
					<div class="image-slider">
						<!-- Slideshow 1 -->
					    <ul class="rslides" id="slider1">
					      <li>
					      	<img src="${TEMPLATE_BASE_PATH}/images/slider1.jpg" alt="">
					      	<div class="slider-info">
					      		<!--<p>Traveling the best Traveling website</p>
					      		<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </span>
					      		<a href="#">ReadMore</a>-->
					      	</div>
					      </li>
					      <li><img src="${TEMPLATE_BASE_PATH}/images/slider2.jpg" alt="">
					      	<div class="slider-info">
					      		<!--<p>Traveling the best Traveling website</p>
					      		<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </span>
					      		<a href="#">ReadMore</a>-->
					      	</div>
					      </li>
					      <li><img src="${TEMPLATE_BASE_PATH}/images/slider3.jpg" alt="">
					      	<div class="slider-info">
					      		<!--<p>Traveling the best Traveling website</p>
					      		<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </span>
					      		<a href="#">ReadMore</a>-->
					      	</div>
					      </li>
					    </ul>
						 <!-- Slideshow 2 -->
					</div>
			<!--End-image-slider---->
		<!---End-wrap---->
		<div class="clear"> </div>
		<!---start-content---->
		<div class="content">
			<div class="wrap">
			<div class="content-grids">
			<@xm_article_page_tag folderId=1 p=1 rows="3">
			<#list tag_article_page.list as tag_article>
				<div class="grid <#if tag_article_index == 2>last-grid</#if>">
					<a href="${WEB_URL}/article/${tag_article.articleId}.htm"><img src="${WEB_URL}/${tag_article.picture}" title="服务业务" /></a>
					<h3>${tag_article.title}</h3>
					<p>${tag_article.summary}</p>
					<a class="button" href="#">More</a>
				</div>
			</#list>
			</@xm_article_page_tag>
				<div class="clear"> </div>
			</div>
			<div class="clear"> </div>
			<div class="specials">
					<div class="specials-heading">
						<h5> </h5><h3>景区推荐 Specials</h3><h5> </h5>
						<div class="clear"> </div>
					</div>
					<div class="clear"> </div>
					<div class="specials-grids">
			<@xm_article_page_tag folderId=2 p=1 rows="3">
			<#list tag_article_page.list as tag_scenic>			
				<div class="special-grid <#if tag_scenic_index == 2>spe-grid</#if>">
					<img src="${WEB_URL}/${tag_scenic.picture}" title="景区推荐" />
					<a href="#">${tag_scenic.title}</a>
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
			<div class="testmonials">
				<div class="wrap">
			<@xm_article_page_tag folderId=7 p=1 rows="1">
			<#list tag_article_page.list as tag_article>
					<div class="testmonial-grid">
						<h3>${tag_article.title}</h3>
						<p>${tag_article.summary}</p>
						<a href="#">--了解详情--</a>
					</div>
			</#list>			
			</@xm_article_page_tag>
				</div>
			</div>
		</div>
		<!---End-content---->
		<div class="clear"> </div>
<#include "footer.ftl">

