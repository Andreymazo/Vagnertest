// $(function() {
//     $('.slider').slick(
//         {
//             arrows:true,
//             dots:true
//         }
//     )});
    (function($){
        $('.slider').slick(
            {
                arrows:true,
                dots:true,
                adaptiveHeight:true,
                slidesToShow:1,
                slidesToScroll:1,
                speed:100,
                easing:'linear',
                infinite:true,
                autoplay:false,
                autoplayspeed:1000,
                pauseOnFocus:true,
                pauseOnHover:true,
                pauseOnDotHover:true,
                draggable:true,
                swipe:true,
                touchThresdhold:5,
                touchMove:true,
                waitForAnimate:false,
                centerMode:false,
                variableWidth: false,
                rows:1,
                slidesPerRow:1,
                vertical: false,
                asNavFor: '.slider_big'
            }

        );
      })(jQuery);

      (function($){
        $('.slider_big').slick(
            {   
                
                arrows:false,
                dots:false,
                centerMode:true,
                asNavFor: '.slider'
           
            }

        );
      })(jQuery);



