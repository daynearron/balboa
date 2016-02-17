$(document).ready(function() {

  // Navigation
  var menuToggle = $('#js-mobile-menu').unbind();
  $('#js-navigation-menu').removeClass("show");

  menuToggle.on('click', function(e) {
    e.preventDefault();
    $('#js-navigation-menu').slideToggle(function(){
      if($('#js-navigation-menu').is(':hidden')) {
        $('#js-navigation-menu').removeAttr('style');
      }
    });
  });

  // Typekit

  var head = document.getElementsByTagName('head')[0];
  var script = document.createElement('script');
  script.type = 'text/javascript';    
  script.src = '//use.typekit.net/lsh0ymz.js';
  var callback = function() {
    try {
      Typekit.load();     
    } catch(e) { 
      // report error     
    }
  }
  script.onreadystatechange = callback;
  script.onload = callback;
  head.appendChild(script);


  // Input Mask
  Inputmask().mask(document.querySelectorAll("input"));

  $('#next-form').click(function() {
    $('.current').removeClass('current').hide()
        .next().show().addClass('current');
    if ($('.current').hasClass('last')) {
        $('#next-form').attr('disabled', true);
    }
    $('.current-step').removeClass('current-step').next().addClass('current-step');
    $('#prev-form').attr('disabled', null);
    $("html, body").animate({ scrollTop: 0 }, 600);
    return false;
  });

$('#prev-form').click(function() {
    $('.current').removeClass('current').hide()
        .prev().show().addClass('current');
    if ($('.current').hasClass('first')) {
        $('#prev-form').attr('disabled', true);
    }
    $('.current-step').removeClass('current-step').prev().addClass('current-step');
    $('#next-form').attr('disabled', null);
    $("html, body").animate({ scrollTop: 0 }, 600);
    return false;
});

});


