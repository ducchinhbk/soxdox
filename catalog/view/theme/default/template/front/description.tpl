<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2 class="title"><?php echo $videodescription['name']; ?></h2>
            <p class="info"><?php echo $videodescription['description']; ?></p>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="row social-btn">
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                    <span class="label label-success" style="background-color: #167ac6;"><?php echo $videodescription['viewCount']; ?></span><span> Lượt xem</span>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                    <iframe src="https://www.facebook.com/plugins/like.php?href=http://www.soxdox.com&amp;width&amp;layout=button_count&amp;action=like&amp;show_faces=true&amp;share=false&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; height:21px;" allowTransparency="true"></iframe>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                    <span class="label label-success" style="background-color: #E45C5C;"><?php echo $videodescription['favoriteCount']; ?></span><span> Yêu thích</span>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                    <div class="date"><i class="fa fa-calendar"></i> <?php echo $videodescription['date_added']; ?></div>
                </div>
            </div>
        </div>
    </div>
</div>

