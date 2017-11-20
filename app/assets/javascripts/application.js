// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require blogjs.js
//= require apply-section-subheading.js
//= require newheader.js
//= require append-technical.js


$(document).on('ready page:load', function(){
//stackoverflow.com/questions/18770517/rails-4-how-to-use-document-ready-with-turbo-links

// $(document).ready(function() {
  $('#sidebaricon').click(function(){

    $(".wrapper").toggleClass('wrapperover');
    $(".sidebar").toggleClass('sidebarover');
    $("#togglebutton").toggleClass('togglebuttonover');

    // if sidebar out, cant scroll vertically
    if ($('.wrapper').hasClass('wrapperover')) {
      // console.log("has class");
      $('body').addClass('make-unscrollable');
      $('#togglebutton').text('X CLOSE');
      $('.blog-header').removeClass('add-box-shadow');
    }
    else {
      $('body').removeClass('make-unscrollable');
      $('#togglebutton').html('&#9776; MENU');
      $('.blog-header').addClass('add-box-shadow');
    }
    
     return false;
  });

  // $('.close-sidebar').click(function(){
  //   $('#sidebaricon').click();
  // });

  $(".mainpage").click(function(){
    $(".wrapper").removeClass('wrapperover');
    $(".sidebar").removeClass('sidebarover');
  });


  $('.fa-pencil').click(function(){
     $(".wrapper").removeClass('wrapperover');
    $(".sidebar").removeClass('sidebarover');
$('.logos').toggleClass('hideme');
$('.logos').toggleClass('changecolor');
$('.contactme').toggleClass('contactchange');
$('.myname').toggleClass('namechange');
});



  // also toggling all tooltips here

  $('[data-toggle="tooltip"]').tooltip();

  $('div.right-arrow').hover(function(){
      $('.blog-header-content').removeClass('hideme');
    }, function(){
      $('.blog-header-content').addClass('hideme');
  });


});




