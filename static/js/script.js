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
                // dots:true,
                // adaptiveHeight:true,
                slidesToShow:3,
                // slidesToScroll:1,
                // speed:100,
                // easing:'linear',
                infinite:true,
                // autoplay:false,
                // autoplayspeed:1000,
                // pauseOnFocus:true,
                // pauseOnHover:true,
                // pauseOnDotHover:true,
                // draggable:true,
                // swipe:true,
                // touchThresdhold:5,
                // touchMove:true,
                // waitForAnimate:false,
                // centerMode:true,
                // variableWidth: false,
                // vertical: false,
                asNavFor: '.sliderbig'
            }

        );
      })(jQuery);

      (function($){
        $('.sliderbig').slick(
            {   
                
                arrows:false,
                fade:true,
                // dots:false,
                // vertical: false,
                asNavFor: '.slider'
           
            }

        );
      })(jQuery);



