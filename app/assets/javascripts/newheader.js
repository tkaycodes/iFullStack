// NEW HEDER NAVIGATION FEATURE

$(document).ready(function(){

  var $dropDownMenu = $('.drop-down-menu');

  $('li.navigation-section').hover(
      // mouseenter function
      function() {
        $dropDownMenu.removeClass('hide-me');

        if ($(this).is('li.navigation-section:nth-child(1)')) {
          console.log("first");
          $('.drop-down-section').addClass('hide-me');
          $('#first').removeClass('hide-me');
        }

        else if ($(this).is('li.navigation-section:nth-child(2)')) {
          console.log("second");
          $('.drop-down-section').addClass('hide-me');
          $('#second').removeClass('hide-me');
        }

        else if ($(this).is('li.navigation-section:nth-child(3)')) {
          console.log("third");
          $('.drop-down-section').addClass('hide-me');
          $('#third').removeClass('hide-me');
        }

        else if ($(this).is('li.navigation-section:nth-child(4)')) {
          console.log("fourth");
          $('.drop-down-section').addClass('hide-me');
          $('#fourth').removeClass('hide-me');
        }

      },
      // mouseleave function
      function() {
        $dropDownMenu.addClass('hide-me');
      }
  );

});
  
