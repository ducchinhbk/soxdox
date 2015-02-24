<!DOCTYPE html>
<html>
  <head>
    <title>Trang chủ</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<?php echo STATIC_PATH ?>/css/style.css">
	<link rel="stylesheet" href="<?php echo STATIC_PATH ?>/css/responsive_style.css">
	<!--link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"-->
	<link rel="stylesheet" href="<?php echo STATIC_PATH ?>/css/flexslider.css" type="text/css" media="screen" />
	
	<script src="<?php echo STATIC_PATH ?>/js/jquery.min.js"></script>
	<script src="<?php echo STATIC_PATH ?>/js/main.js"></script>
	
	 <!-- jQuery -->
  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.min.js">\x3C/script>')</script>
	
  <!-- FlexSlider -->
  <script  src="<?php echo STATIC_PATH ?>/js/jquery.flexslider.js"></script>

  </head>

  <body>
	<header>
		<div class="wrapper">
			<div class="container">
				<div class="top-head hidden-md">
					<a href="#" class="logo"> <img src="<?php echo STATIC_PATH ?>/images/logo.png" alt="logo"/></a>
					<div class="banner banner-728x90">
						<a href="#"> <img src="<?php echo STATIC_PATH ?>/images/banner_top.jpg" alt="logo"/></a>
					</div>
				</div><!--End top-head-->
				<div class="clear"> </div>
				<div class="navigation hidden-md hidden-sm">
					<a href="#" class="home_btn"> <img src="<?php echo STATIC_PATH ?>/images/home_icon.png" alt="logo"/></a>
					<ul id="menu-catemenu" class="menu-list">
						<li class="active"> <a href="#"> Triển lãm Ô TÔ </a></li>
						<li> 
							<a href="#"> Xe mới </a>
							<ul class="sub-menu" style="display: none;">
								<li id="menu-item-307" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-307"><a href="#">Trong nước</a></li>
								<li id="menu-item-308" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-308"><a href="#">Quốc tế</a></li>
							</ul>
						</li>
						<li> <a href="#"> Đánh giá </a></li>
						<li> <a href="#"> Tin tức </a></li>
						<li> <a href="#"> Chuyên đề </a></li>
						<li> <a href="#"> Bảng giá </a></li>
						<li> <a href="#"> Photo </a></li>
						<li> <a href="#"> Video </a></li>
					</ul>
					<div class="search-form">
						<form role="search" method="get" class="menu-search" action="#">
							<input type="text" placeholder="Tìm kiếm" value="" name="s" class="inputSearch">
							<input type="submit" class="btnSearch" value="Tìm">
						</form>
						<div class="icon-search" id="searchForm"></div>
					</div>
				</div><!--End navigation-->
				<div class="navigation re_nav visible">
					<div class="res-menu">
						<ul>
							<li class="active"> <a href="#"> Triển lãm Ô TÔ </a></li>
							<li> <a href="#"> Xe mới </a></li>
							<li> <a href="#"> Đánh giá </a></li>
							<li> <a href="#"> Tin tức </a></li>
							<li> <a href="#"> Chuyên đề </a></li>
							<li> <a href="#"> Bảng giá </a></li>
							<li> <a href="#"> Video </a></li>
						</ul>
					</div>
					<a href="#" class="toggle_btn" id="toggle_btn"> <img src="<?php echo STATIC_PATH ?>/images/toggle_icon.png" alt="logo"/></a>
					<a href="#" class="logo" id="re_logo"> <img src="<?php echo STATIC_PATH ?>/images/logo_767.png" alt="logo"/></a>
					<form role="search" method="get" class="re_menu-search" action="#">
						<input type="text" placeholder="Tìm kiếm" value="" name="s" class="re_inputSearch hidden-xs mb_input_se">
						<input type="submit" class="icon-search" id="mb_icon_se" value="">
					</form>
					
				</div><!--End navigation-->
			</div><!--End container-->
		</div><!--End top-wrap-->
	</header><!--End header-->
	<div class="clear"> </div>