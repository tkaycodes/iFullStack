$(document).on('ready page:load', function(){

  var url          = window.location.href;
  var tagposition  = url.indexOf('tagname');
  var dateposition = url.indexOf('filterbydate');
  var rubydate     = url.indexOf('rubydate');

  if (tagposition !== -1) {
    var filter = url.substring(tagposition+8, url.length);
    $('#section-heading').after('<span class="filterappliedheading">'+filter+'</span>');
  }
  else if (dateposition !== -1) {
    var date = url.substring(dateposition+13, rubydate-1);
    $('#section-heading').after('<span class="filterappliedheading">'+date+'</span>');

  }

  // Also apply subheading to projects index page
  // $('#blog-heading').after('<span class="filterappliedheading">'+filter+'</span>');

});