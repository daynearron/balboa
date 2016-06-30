var do_on_load = function() { 

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



  // Slide Menu

  $('.sliding-panel-button,.sliding-panel-fade-screen,.sliding-panel-close').on('click touchstart',function (e) {
    $('.sliding-panel-content,.sliding-panel-fade-screen,.hamburger').toggleClass('is-visible');
    e.preventDefault();
  });

  // // Look for .hamburger
  // var hamburger = document.querySelector(".hamburger");
  // // On click
  // hamburger.addEventListener("click", function() {
  //   // Toggle class "is-active"
  //   hamburger.classList.toggle("is-active");
  //   // Do something else, like open/close menu
  // });


  // Next/Prev Form

  // selects all the divs of class='tab',hides them, finds the first, and shows it
  $('div.tab').hide().first().show();

  // binds a click event-handler to a elements whose class='display'
  $('a.display').on('click', function(e) {
      // prevents the default action of the link
      e.preventDefault();

      $('html,body').animate({
        scrollTop: 360
      }, 700);

      // assigns the currently visible div.tab element to a variable
      var that = $('div.tab:visible'),
          // assigns the text of the clicked-link to a variable for comparison purposes
          t = $(this).text();

      // checks if it was the 'next' link, and ensures there's a div to show after the currently-shown one
      if (t == 'next' && that.next('div.tab').length > 0) {
          // hides all the div.tab elements
          $('div.tab').hide();

          // shows the 'next'
          that.next('div.tab').show()
      }
      // exactly the same as above, but checking that it's the 'prev' link
      // and that there's a div 'before' the currently-shown element.
      else if (t == 'prev' && that.prev('div.tab').length > 0) {
        $('div.tab').hide();
        that.hide().prev('div.tab').show()
      }
  });
}

$(document).ready(do_on_load)
$(document).on('page:load', do_on_load)

