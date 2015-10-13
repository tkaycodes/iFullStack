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

$(document).on('ready page:load', function(){
//stackoverflow.com/questions/18770517/rails-4-how-to-use-document-ready-with-turbo-links

// $(document).ready(function() {
  $('#sidebaricon').click(function(){
    $(".wrapper").toggleClass('wrapperover');
    $(".sidebar").toggleClass('sidebarover');
    $("#togglebutton").toggleClass('togglebuttonover');
    
     return false;
  });

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


  // smooth scroll for clicking projects link


$('#projectref').click(function(e){
  e.preventDefault();
  $('body, html').animate({
    scrollTop: $('#mainproj_bottom').offset().top
  },500);
});

});
