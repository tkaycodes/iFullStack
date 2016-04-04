$(document).on('ready page:load', function() {

  var url             = window.location.href;
  var technicalTopics = ['Ruby-on-Rails', 'Tutorial', 'Programming', 'jQuery'];
    
    // loop through all links
    $('.blogtag').each(function() {  
      var $parentBlog = $(this).closest('.blog_main');
      if ($parentBlog.children('.technical-post').length === 0) { 
        
        for (var i=0; i<technicalTopics.length; i++) {
          if ( $(this).text() === technicalTopics[i] ) {
            $(this).closest('.blog_main').append('<div class="technical-post">Technical Post</div>');
          }
        }
      
      }
    });


  
});
