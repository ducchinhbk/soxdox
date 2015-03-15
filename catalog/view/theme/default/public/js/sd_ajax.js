$(window).load(function(){
    
     $('.video-item').bind('click', function() {
        
        var videoID = $(this).find('.videoID').val();
        $('.video-list li').removeClass('active');
        $(this).addClass('active');
        $('#ajaxloading').show();
        $('.video-player').hide();
        //setTimeout(600);
        
        $.ajax({
            url: 'index.php?route=front/loadcurrentvideo',
            type: 'post',
            data: { 'videoID': videoID },
            dataType: 'json',
            success: function(data) {
                 $('.video-player').html(data.videoHtml);
                 $('#ajaxloading').hide();
                 $('.video-player').show();
                 $('#description').html(data.description)
            }
        }); 
        
    });
    
    $('#prev-video').bind('click', function() {
        $this = $('.video-list li.active').prev();
        var videoID = $('.video-list li.active').prev().find('.videoID').val();
        //alert(videoID);
        if( videoID !== undefined){
            $('.video-list li').removeClass('active');
            $this.addClass('active');
            $('#ajaxloading').show();
            $('.video-player').hide();
            
            $.ajax({
                url: 'index.php?route=front/loadcurrentvideo',
                type: 'post',
                data: { 'videoID': videoID },
                dataType: 'json',
                success: function(data) {
                     $('.video-player').html(data.videoHtml);
                     $('#ajaxloading').hide();
                     $('.video-player').show();
                     $('#description').html(data.description)
                }
            });        
        }
        else{
            alert('Không có video trước!');
        }
        
    });
    
    $('#next-video').bind('click', function() {
        $this = $('.video-list li.active').next();
        var videoID = $('.video-list li.active').next().find('.videoID').val();
        //alert(videoID);
        if( videoID !== undefined){
            $('.video-list li').removeClass('active');
            $this.addClass('active');
            $('#ajaxloading').show();
            $('.video-player').hide();
            
            $.ajax({
                url: 'index.php?route=front/loadcurrentvideo',
                type: 'post',
                data: { 'videoID': videoID },
                dataType: 'json',
                success: function(data) {
                     $('.video-player').html(data.videoHtml);
                     $('#ajaxloading').hide();
                     $('.video-player').show();
                     $('#description').html(data.description)
                }
            });        
        }
        else{
            alert('Không có video trước!');
        }
        
    });

});