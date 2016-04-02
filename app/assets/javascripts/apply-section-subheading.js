$(document).on('ready page:load', function(){

  var url         = window.location.href;
  var tagposition = url.indexOf('tagname');

  if (tagposition !== -1) {
    var filter = url.substring(tagposition+8, url.length);
    $('#section-heading').after('<span class="filterappliedheading">'+filter+'</span>');
  }

  // Also apply subheading to projects index page
  // $('#blog-heading').after('<span class="filterappliedheading">'+filter+'</span>');

});