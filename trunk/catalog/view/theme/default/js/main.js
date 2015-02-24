$().ready(function(){
	$("#searchForm").click(function(){
		//$(".menu-search").toggle();
		$(".menu-search").animate({
		  height:'toggle'
		});
	  });
	$("#mb_icon_se").click(function(){
		//$(".menu-search").toggle();
		$(".mb_input_se").toggle();
	});
	$(".banner-bottom-block").mouseover(function(){
		$(".hide-banner").fadeIn();
	})
	$(".banner-bottom-block").mouseout(function() { 
		$(".hide-banner").fadeOut();
	});
	
	$('#scrolltop').click(function () {
		$('body,html').animate({
			scrollTop: 0
		}, 800);
		return false;
	});
	$("").mouseenter(function(){
        
    });	
    
    $("#menu-catemenu li")
      .mouseover(function() {
         $(this).addClass('classhover');
         $(this).find('.sub-menu').show();
      })
      .mouseout(function() {
          $(this).removeClass('classhover');
           $(this).find('.sub-menu').hide();
      });
	  
	//processing responsive menu
	$("#toggle_btn").click(function(){
		$(".res-menu").toggle();
		$('#re_logo').toggle();
	});
});

	// $(function(){
	// 	SyntaxHighlighter.all();
	// });
	$(window).load(function(){
		$('.fslider').flexslider({
			animation: "slide",
			animationLoop: false,
			directionNav: false,
			itemWidth: 80,
			itemMargin: 4,
			//pausePlay: true,
			start: function(slider){
			  $('body').removeClass('loading');
			}
		});
        $('.fslider').show();
		
		$('.mostview-block').flexslider({
			animation: "slides",
			animationLoop: false,
			controlNav: false, 
			itemWidth: 216,
			itemMargin: 4,
			prevText: "", 
			nextText: "",   
			//pausePlay: true,
			start: function(slider){
			  $('body').removeClass('loading');
			}
      });
      $('.mostview-block').show();
		
		
	});