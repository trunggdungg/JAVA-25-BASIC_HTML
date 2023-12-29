$(document).ready(function(){
  $('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,/*thanh dieu huong*/
    dots:true,
    autoplay: true, /* Auto-play option */
    autoplayTimeout: 3000, 
    responsive:{
        0:{
            items:1
        },  
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
})
  });

