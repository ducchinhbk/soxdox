<link rel="stylesheet" href="<?php echo STATIC_PATH; ?>/public/css/bootstrap.min.css"/>
<link rel="stylesheet" href="<?php echo STATIC_PATH; ?>/public/lib/fontawesome/css/font-awesome.min.css"/>
<link rel="stylesheet" href="<?php echo STATIC_PATH; ?>/public/css/style.css"/>

<script type="text/javascript" src="<?php echo STATIC_PATH; ?>/public/js/jquery.js"></script>
<script type="text/javascript" src="<?php echo STATIC_PATH; ?>/public/lib/jwplayer/jwplayer.js"></script>
<script type="text/javascript">jwplayer.key="Tl/cGRKD5+mHxuBA9abJoeWYGnxLoRlF9Xt8VQHJS2nHMmlibF4GZ6FPp4Zk0206";</script>

<div id="ywplayer-container">
<div id="ywplayer"></div>
                            
<script type='text/javascript'>
    jwplayer('ywplayer').setup({
        file: '<?php echo $videolink; ?>',
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
