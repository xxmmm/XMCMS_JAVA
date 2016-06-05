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
						<li class="active"><a href="index.html">首页</a></li>
						<li><a href="about.html">关于我们</a></li>
						<li><a href="services.html">公司业务</a></li>
						<li><a href="plans.html">公司新闻</a></li>
						<li><a href="contact.html">推荐景点</a></li>
                        <li><a href="contact.html">旅游平台</a></li>
						<li><a href="contact.html">联系我们</a></li>
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
				<div class="grid">
					<a href="#"><img src="${TEMPLATE_BASE_PATH}/images/grids-img1.jpg" title="image-name" /></a>
					<h3>${tag_article.title}</h3>
					<p>${tag_article.summary}</p>
					<a class="button" href="#">More</a>
				</div>
			</#list>
<!--			<div class="grid last-grid">
					<a href="#"><img src="images/grids-img3.jpg" title="image-name" /></a>
					<h3>SUPPORT</h3>
					<p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
					<a class="button" href="#">More</a>
				</div>
				-->
				</@xm_article_page_tag>
				<div class="clear"> </div>
			</div>
			<div class="clear"> </div>
			<div class="specials">
					<div class="specials-heading">
						<h5> </h5><h3>Traveling Specials</h3><h5> </h5>
						<div class="clear"> </div>
					</div>
					<div class="clear"> </div>
					<div class="specials-grids">
						<div class="special-grid">
							<img src="images/grids-img1.jpg" title="image-name" />
							<a href="#">Latest Plans</a>
							<p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
						</div>
						<div class="special-grid">
							<img src="images/grids-img2.jpg" title="image-name" />
							<a href="#">Pre Plans</a>
							<p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
						</div>
						<div class="special-grid spe-grid">
							<img src="images/grids-img3.jpg" title="image-name" />
							<a href="#">Free Plans</a>
							<p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
						</div>
						<div class="clear"> </div>
					</div>
					<div class="clear"> </div>
			</div>
			</div>	
			<div class="clear"> </div>
			<div class="testmonials">
				<div class="wrap">
					<div class="testmonial-grid">
						<h3>TESTIMONIALS :</h3>
						<p>&#34; Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat luctus eros ac placerat. Quisque erat metus, facilisis non felis eu, aliquam hendrrit quam. Donec ut lectus vel dolor adipiscing tincidunt. Ut auctor diam at est iaculis, vitae interdum magna sagittis.&#34;</p>
						<a href="#"> - Lorem ipsum</a>
					</div>
				</div>
			</div>
		</div>
		<!---End-content---->
		<div class="clear"> </div>
<#include "footer.ftl">

