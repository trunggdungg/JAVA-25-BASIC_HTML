$(document).ready(function(){
    $('.owl-carousel').owlCarousel({
      loop:true,
      margin:-5,
      nav:true,/*thanh dieu huong*/
      dots:false,
      autoplay: true, /* Auto-play option */
      autoplayTimeout: 3000, 
      responsive:{
          0:{
              items:1
          },  
          600:{
              items:4
          },
          1000:{
              items:4
          }
      }
  })
    });
  