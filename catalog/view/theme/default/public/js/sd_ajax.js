$(window).load(function(){
    
     $('#test_ajax').bind('click', function() {
        alert('fldahfldafa');
        /*$.ajax({
            url: 'index.php?route=front/loadcurrentvideo',
            type: 'post',
            data: { videolink: "https://www.youtube.com/watch?v=aEkNB-nH_QU"},
            dataType: 'html',
            success: function(output) {
                 $('.video-player').html(output);
            }
        });*/
    });

});