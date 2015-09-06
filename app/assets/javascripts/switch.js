$(document).ready(function(){


// applies bootstrap switch to the selected element
$('#bootstrap_state').bootstrapSwitch();


// http://www.bootstrap-switch.org/events.html
// binds event handler to selected element (for switch change event)
$('#bootstrap_state').on('switchChange.bootstrapSwitch', function(event, state){
  // console.log(this);
  // console.log(event);
  if (state === true){
    console.log('on');
    $('#password_field').attr("type", "text");
  }
  else if (state === false){
    console.log('off');
    $('#password_field').attr("type", "password");

  }
});


});
