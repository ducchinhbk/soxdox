<?php echo $header; ?>
<div class="video-top clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" id="video-block">
                        <div id="ajaxloading">
                            <img src="<?php echo STATIC_PATH; ?>/public/img/ajax-loader.gif"  alt="ajaxloading"/>
                        </div>
                        <div class="video-player">
							<div id="ywplayer"></div>
                            
							<script type='text/javascript'>
        						jwplayer('ywplayer').setup({
        							file: 'https://www.youtube.com/watch?v=aEkNB-nH_QU',
        							width: '100%',
        							aspectratio: '16:9',
        							skin: 'five',
        							logo: {
        								file: "http://freetuts.net/upload/config/images/logo-hoc-lap-trinh-online.jpg",
        								link: 'http://freettuts.net',
        							}
        						});
        					</script>
                        </div>
                        <div class="video-subcribe">
                            <div class="btn-subcribe">
                                <span>Subcribe to Videotv</span>
                                <div class="youtut">
                                    <div class="g-ytsubscribe" data-channel="GoogleDevelopers" data-layout="default" data-count="default"></div>
                                </div>
                            </div>
                        </div>
                    </div>
					
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 visible-md-block visible-lg-block">
                        <ul class="video-list" data-mcs-theme="minimal-dark">
                            <?php $i=0; foreach( $videos as $video ){ ?>
                                <?php if( $i <= 0 ) {?>
                                
                                    <li class="active video-item">
                                        <a class="img" ><img class="img-responsive" src="<?php echo $video['image']; ?>" alt="<?php echo $video['name']; ?>"/></a>
                                        <div class="text">
                                            <a ><?php echo $video['name']; ?></a>
                                            <div class="time"><?php echo $video['duration']; ?></div>
                                        </div>
                                        <input type="hidden" class="videoID" value="<?php echo $video['videoID_decode']; ?>" />
                                    </li>
                                
                                <?php } else {?>
                                
                                        <li class="video-item" >
                                            <a class="img" ><img class="img-responsive" src="<?php echo $video['image']; ?>" alt="<?php echo $video['name']; ?>"/></a>
                                            <div class="text">
                                                <a ><?php echo $video['name']; ?></a>
                                                <div class="time"><?php echo $video['duration']; ?></div>
                                            </div>
                                            <input type="hidden" class="videoID" value="<?php echo $video['videoID_decode']; ?>" />
                                        </li> 
                                
                            <?php } $i++; } ?>
                            
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                <div class="post-bar clearfix">
                                    <div class="pull-left">
                                        <a class="badge-upvote-btn btn btn-invert btn-lg"><i class="fa fa-arrow-up"></i></a>
                                        <a class="badge-downvote-btn btn btn-invert btn-lg"><i class="fa fa-arrow-down"></i></a>
                                    </div>
                                    <div class="pull-right">
                                        <a class="btn btn-facebook btn-lg" href="https://www.facebook.com/sharer/sharer.php?u=http:www.soxdox.com" target="_blank"><i class="fa fa-facebook fa-lg"></i>Share<span class="hidden-xs"> on Facebook</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                <div class="video-control">
                                    <div class="row">
                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                            <div id="prev-video" class="badge-post-next btn btn-lg btn-invert btn-block"  role="button"><i class="fa fa-arrow-left"></i> Previous</div>
                                        </div>
                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                            <div id="next-video" class="badge-post-prev btn btn-lg btn-invert btn-block" href="" role="button">Next <i class="fa fa-arrow-right"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="video-info clearfix" id="description">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <h2 class="title">What Girls Think vs What Guys Think</h2>
                        <p class="info">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque eligendi cum doloribus rerum autem architecto inventore, enim mollitia animi laudantium quod nobis corrupti, repellendus quibusdam odio voluptate sunt assumenda vitae repudiandae voluptatum exercitationem. Nulla, quod aspernatur aut minima at dicta!</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="row social-btn">
                            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                                <span class="label label-success" style="background-color: #167ac6;">6,901</span><span> Lượt xem</span>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                                <iframe src="https://www.facebook.com/plugins/like.php?href=http://www.soxdox.com&amp;width&amp;layout=button_count&amp;action=like&amp;show_faces=true&amp;share=false&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; height:21px;" allowTransparency="true"></iframe>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                                <span class="label label-success" style="background-color: #E45C5C;" >6,901</span><span> Yêu thích</span>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                                <div class="date"><i class="fa fa-calendar"></i> 14.01.2015</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section class="main-content">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="content-info content-top clearfix">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="row">
                                <?php $i=0; foreach( $newVideos as $newVideo){?>
                                        <?php if( $i <= 0 ){?>
                                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-6">
                                                <div class="item-main item-lg cover" style="background-image: url(<?php echo $newVideo['image'];?> )">
                                                    <a href="<?php echo $newVideo['actLink'];?>"><img class="img-responsive" src="<?php echo $newVideo['image']; ?>" alt="<?php echo $newVideo['name']; ?>"/></a>
                                                    <div class="title">
                                                        <a href="<?php echo $newVideo['actLink']?>">
                                                            <span class="text-wrap">
                                                                <span class="text"><?php echo $newVideo['name']?></span>
                                                                <span class="clock-view"><span><i class="fa fa-clock-o"></i> <?php echo $newVideo['duration']; ?></span> <span><i class="fa fa-eye"></i> <?php echo $newVideo['viewCount']; ?></span></span>
                                                            </span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php } else{?>
                                                <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                                    <div class="item-main cover" style="background-image: url(<?php echo $newVideo['image'];?> )">
                                                        <a href="<?php echo $newVideo['actLink']; ?>"><img class="img-responsive" src="<?php echo $newVideo['image']; ?>" alt="<php echo $newVideo['name']; ?>"/></a>
                                                        
                                                        <div class="title">
                                                            <a href="<?php echo $newVideo['actLink']; ?>">
                                                                <span class="text-wrap">
                                                                    <span class="text"><?php echo $newVideo['name']; ?></span>
                                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> <?php echo $newVideo['duration']; ?></span> <span><i class="fa fa-eye"></i> <?php echo $newVideo['viewCount']; ?></span></span>
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                <?php } $i++; } ?>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end content-top -->
                    <div class="content-info content-music clearfix">
                        <div class="content-title clearfix">
                            <div class="row" id="tvshow">
                                <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
                                    <div class="catalog-title"><i class="fa fa-video-camera"></i> TV SHOW</div>
                                </div>
                                <div class="col-xs-10 col-sm-8 col-md-9 col-lg-10 hidden-xs">
                                    <ul class="catalog-list">
                                        <li><a href="index.php?route=front/cate&c=tv-show&v=xem-nhieu">Xem nhiều nhất</a></li>
                                        <li><a href="index.php?route=front/cate&c=show-viet-nam">Show Việt Nam</a></li>
                                        <li><a href="index.php?route=front/cate&c=show-au-my">Show Âu - Mỹ</a></li>
                                        <li><a href="index.php?route=front/cate&c=show-han-quoc">Show Hàn Quốc</a></li>
                                        <li><a href="index.php?route=front/cate&c=show-hoa-ngu">Show Hoa Ngữ</a></li>
                                        <li><a href="index.php?route=front/cate&c=show-thuc-te">Show Thực Tế</a></li>
                                        <li><a href="index.php?route=front/cate&c=show-hai-huoc">Show Hài Hước</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-8 col-sm-15">
                                        <div class="item-main item-lg cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-xs-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-sm-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-sm-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-xs-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-xs-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-sm-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-xs-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-xs-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end TV show -->
                    
                    <div class="content-info content-news clearfix">
                        <div class="content-title clearfix">
                            <div class="row" id="leaf">
                                <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
                                    <div class="catalog-title"><i class="fa fa-leaf"></i> Hoạt hình</div>
                                </div>
                                <div class="col-xs-12 col-sm-8 col-md-9 col-lg-10 hidden-xs">
                                    <ul class="catalog-list">
                                        <li><a href="#">Xem nhiều nhất</a></li>
                                        <li><a href="#">Hành động - Phiêu lưu</a></li>
                                        <li><a href="#">Tâm lý - Lãng mạng</a></li>
                                        <li><a href="#">Khoa học - Viễn tưởng</a></li>
                                        <li><a href="#">Kinh dị - Siêu nhiên</a></li>
                                        <li><a href="#">Hài hước</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end content-hoathinh -->
                    
                    <div class="content-info content-film clearfix">
                        <div class="content-title clearfix">
                            <div class="row" id="game">
                                <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
                                    <div class="catalog-title"><i class="fa fa-gamepad"></i> Game</div>
                                </div>
                                <div class="col-xs-12 col-sm-8 col-md-9 col-lg-10 hidden-xs">
                                    <ul class="catalog-list">
                                        <li><a href="#">Xem nhiều nhất</a></li>
                                        <li><a href="#">Xem tất cả</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2 hidden-xs">
                                <div class="list-album row" data-mcs-theme="minimal-dark">
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="BB&amp;BG">BB&amp;BG</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-8 col-md-9 col-lg-10">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-2">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text-wrap">
                                                    <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                    <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end content-film -->

                    <div class="content-info content-music clearfix">
                        <div class="content-title clearfix">
                            <div class="row" id="sport">
                                <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
                                    <div class="catalog-title"><i class="fa fa-futbol-o"></i> Thể Thao</div>
                                </div>
                                <div class="col-xs-10 col-sm-8 col-md-9 col-lg-10 hidden-xs">
                                    <ul class="catalog-list">
                                        <li><a href="#">Xem nhiều nhất</a></li>
                                        <li><a href="#">Bóng đá Việt Nam</a></li>
                                        <li><a href="#">Ngoại hạng anh</a></li>
                                        <li><a href="#">Bóng đá thế giới</a></li>
                                        <li><a href="#">La Liga</a></li>
                                        <li><a href="#">Các môn thể thao khác</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-8 col-sm-15">
                                        <div class="item-main item-lg cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-xs-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-sm-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-sm-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-xs-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-xs-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-sm-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-xs-15">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-xs-15">
                                        <div class="item-main cover" style="background-image: url(public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="public/img/2_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            <div class="hour">1:5:30</div>
                                            <div class="title">
                                                <a href="#">
                                                    <span class="text-wrap">
                                                        <span class="text">Phở đặc biệt: Lạc giữa Sài Gòn</span>
                                                        <span class="clock-view"><span><i class="fa fa-clock-o"></i> 01:20</span> <span><i class="fa fa-eye"></i> 158,134</span></span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end content-music -->

                    <div class="content-info content-news clearfix">
                        <div class="content-title clearfix">
                            <div class="row" id="news">
                                <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
                                    <div class="catalog-title"><i class="fa fa-newspaper-o"></i> Tin tức</div>
                                </div>
                                <div class="col-xs-12 col-sm-8 col-md-9 col-lg-10 hidden-xs">
                                    <ul class="catalog-list">
                                        <li><a href="#">Xem nhiều nhất</a></li>
                                        <li><a href="#">Tin thế giới</a></li>
                                        <li><a href="#">Kinh tế</a></li>
                                        <li><a href="#">Đời sống xã hội</a></li>
                                        <li><a href="#">Báo chí</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2 hidden-xs">
                                <div class="list-album row" data-mcs-theme="minimal-dark">
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="BB&amp;BG">BB&amp;BG</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="Fallout vs Skyrim"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-8 col-md-9 col-lg-10">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end content-news -->

                    <div class="content-info content-fashion content-news clearfix">
                        <div class="content-title clearfix">
                            <div class="row" id="funny">
                                <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
                                    <div class="catalog-title"><i class="fa fa-heartbeat"></i> Hài hước</div>
                                </div>
                                <div class="col-xs-12 col-sm-8 col-md-9 col-lg-10 hidden-xs">
                                    <ul class="catalog-list">
                                        <li><a href="#">Xem nhiều nhất</a></li>
                                        <li><a href="#">Tiểu phẩm hài</a></li>
                                        <li><a href="#">Sân Khấu - Liveshow Hài</a></li>
                                        <li><a href="#">Giải Trí - Vui Nhộn</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2 hidden-xs">
                                <div class="list-album row" data-mcs-theme="minimal-dark">
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="img"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="BB&amp;BG">BB&amp;BG</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="img"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="img"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-8 col-md-9 col-lg-10">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end content-haihuoc -->
                    
                    <div class="content-info content-fashion content-news clearfix">
                        <div class="content-title clearfix">
                            <div class="row" id="public">
                                <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
                                    <div class="catalog-title"><i class="fa fa-google-wallet"></i> Cộng đồng</div>
                                </div>
                                <div class="col-xs-12 col-sm-8 col-md-9 col-lg-10 hidden-xs">
                                    <ul class="catalog-list">
                                        <li><a href="#">Xem nhiều nhất</a></li>
                                        <li><a href="#">Xem tất cả</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2 hidden-xs">
                                <div class="list-album row" data-mcs-theme="minimal-dark">
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="img"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="BB&amp;BG">BB&amp;BG</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="img"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="playlist">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 img-album">
                                            <p class="cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/1_b.jpg);">
                                                <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/1_b.jpg" alt="img"/></a>
                                            </p>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 info">
                                            <div>
                                                <p class="title"><a href="#" title="Lorem ipsum">Lorem ipsum</a>
                                                </p>
                                                <p class="meta"><span><i class="fa fa-eye"></i> 158,134</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-8 col-md-9 col-lg-10">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="item-main cover" style="background-image: url(<?php echo STATIC_PATH; ?>/public/img/2_b.jpg);">
                                            <a href="#"><img class="img-responsive" src="<?php echo STATIC_PATH; ?>/public/img/2_b.jpg" alt="img"/></a>
                                            <div class="hour">1:5:30</div>
                                        </div>
                                        <div class="title">
                                            <a href="#">
                                                <span class="text">Lorem ipsum dolor sit amet</span>
                                            </a>
                                            <div class="text-wrap">
                                                <div class="time">9 month ago</div>
                                                <div class="clock-view"><span><i class="fa fa-heart"></i> 900</span> <span><i class="fa fa-eye"></i> 158,134</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end content-fashion -->
                </div>
            </div>
        </div>
    </section>
<?php echo $footer; ?>