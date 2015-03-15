<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trang chủ</title>

	
	<!-- Bootstrap -->
    <link rel="stylesheet" href="<?php echo STATIC_PATH; ?>/public/css/jquery.mCustomScrollbar.min.css"/>
    <!--link rel="stylesheet" href="public/lib/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css"/-->
    <link rel="stylesheet" href="<?php echo STATIC_PATH; ?>/public/css/bootstrap.min.css"/>
    <!--link rel="stylesheet" href="public/lib/bootstrap/dist/css/bootstrap.min.css"/-->
    <link rel="stylesheet" href="<?php echo STATIC_PATH; ?>/public/lib/fontawesome/css/font-awesome.min.css"/>
    
    <link rel="stylesheet" href="<?php echo STATIC_PATH; ?>/public/lib/owlcarousel/owl.carousel.css"/>
    <link rel="stylesheet" href="<?php echo STATIC_PATH; ?>/public/lib/owlcarousel/owl.theme.css"/>
    <link rel="stylesheet" href="<?php echo STATIC_PATH; ?>/public/css/style.css"/>
    
    <!-- Jquery -->
    <script type="text/javascript" src="<?php echo STATIC_PATH; ?>/public/js/jquery.js"></script>
    <script type="text/javascript" src="<?php echo STATIC_PATH; ?>/public/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo STATIC_PATH; ?>/public/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="<?php echo STATIC_PATH; ?>/public/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="<?php echo STATIC_PATH; ?>/public/js/plugin.js"></script>
    <script type="text/javascript" src="<?php echo STATIC_PATH; ?>/public/js/sd_ajax.js"></script>
    <script type="text/javascript" src="<?php echo STATIC_PATH; ?>/public/lib/jwplayer/jwplayer.js"></script>
	<script type="text/javascript">jwplayer.key="Tl/cGRKD5+mHxuBA9abJoeWYGnxLoRlF9Xt8VQHJS2nHMmlibF4GZ6FPp4Zk0206";</script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="public/js/html5shiv.min.js"></script>
        <script src="public/js/respond.min.js"></script>
    <![endif]-->
    
    <script>
        $(document).ready(function(){
        	$('a[href^="#"]').on('click',function (e) {
        	    e.preventDefault();
        
        	    var target = this.hash;
        	    var $target = $(target);
        
        	    $('html, body').stop().animate({
        	        'scrollTop': $target.offset().top
        	    }, 900, 'swing', function () {
        	        window.location.hash = target;
        	    });
        	});
        });
    </script>
</head>
<body>
    
    
    <header class="header">
        <div class="top-header clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                        <div class="logo-nav">
                            <h1 class="logo"><a href="#" title="videotv"><img src="<?php echo STATIC_PATH; ?>/public/img/logo.png" alt="videotv"/></a></h1>
                            <div class="btn-bar"><i class="fa fa-bars"></i> <i class="fa fa-caret-down"></i></div>
                            <nav class="main-menu menu-nav">
                                <ul>
                                    <li class="active"><a href="#"><i class="fa fa-home"></i> Trang chủ</a></li>
                                    <li><a href="#tvshow"><i class="fa fa-video-camera"></i> TV Show</a></li>
                                    <li><a href="#"><i class="fa fa-film"></i> Phim</a></li>
                                    <li><a href="#"><i class="fa fa-music"></i> Âm nhạc</a></li>
                                    <li><a href="#leaf"><i class="fa fa-leaf"></i> Hoạt hình</a></li>
                                    <li><a href="#game"><i class="fa fa-leaf"></i> Game</a></li>
                                    <li><a href="#sport"><i class="fa fa-futbol-o"></i> Thể thao</a></li>
                                    <li><a href="#news"><i class="fa fa-newspaper-o"></i> Tin tức</a></li>
                                    <li><a href="#funny"><i class="fa fa-trophy"></i> Hài hước</a></li>
                                    <li><a href="#public"><i class="fa fa-google-wallet"></i> Cộng đồng</a></li>
                                        
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                        <div class="input-group search pull-left">
                            <input type="text" class="form-control" placeholder="Search for..."/>
                            <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                        <div class="login-upload pull-right">
                            <button type="button" id="test_ajax" class="btn btn-default">Tải lên</button>
                            <button type="button" class="btn btn-primary login">Đăng nhập</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-top clearfix hidden-xs">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <nav class="main-menu">
                            <ul>
                                <li class="active"><a href="#"><i class="fa fa-home"></i> Trang chủ</a></li>
                                <li><a href="#tvshow"><i class="fa fa-video-camera"></i> TV Show</a></li>
                                <li><a href="#"><i class="fa fa-film"></i> Phim</a></li>
                                <li><a href="#"><i class="fa fa-music"></i> Âm nhạc</a></li>
                                <li><a href="#leaf"><i class="fa fa-leaf"></i> Hoạt hình</a></li>
                                <li><a href="#game"><i class="fa fa-leaf"></i> Game</a></li>
                                <li><a href="#sport"><i class="fa fa-futbol-o"></i> Thể thao</a></li>
                                <li><a href="#news"><i class="fa fa-newspaper-o"></i> Tin tức</a></li>
                                <li><a href="#funny"><i class="fa fa-trophy"></i> Hài hước</a></li>
                                <li><a href="#public"><i class="fa fa-google-wallet"></i> Cộng đồng</a></li>
                                    
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>