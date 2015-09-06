$(document).ready(function(){
  // console.log('hi');

  // returns value of password field when the submit button is clicked
  $('input[type="button"]').click(function(){
    var password_value = $('input[type="text"][placeholder="Password"]').val();
    console.log(password_value);
  });

  $('#password_field').keyup(function()
    {


      // appends error message div if dosnt exist already
      if ($('#errormessage').length === 0 ){
        $('#pass_strength').slideDown("fast");
      }

      // original score
      var password_score = 0;
      // everytime key is pressed score is set to 0, it sets the score
      // based on the conditions below and then displays it



      // calculate score
      var password_value = $(this).val();
      // console.log(password_value);
      if (password_value.length > 12){
        console.log("Length greater than 12! (+1)");
        password_score +=1;
        // console.log("new score "+password_score);
      }
      if (password_value.length > 8){
        console.log("Length greater than 8! (+1)");
        password_score +=1;
        // console.log("new score "+password_score);
      }


      // match:  http://www.w3schools.com/jsref/jsref_match.asp
      // regexp: http://stackoverflow.com/questions/6053541/regex-every-non-alphanumeric-character-except-white-space-or-colon

      if (password_value.match(/[^a-zA-Z\d\s:]/)){
        password_score +=1;
        console.log("Contains at least one non alpha-num char! (+1)");
      }

      if (password_value.match(/[A-Z]/)){
        password_score +=1;
        console.log("Contains at least one upper-case char! (+1)");

      }

      if (password_value.match(/[a-z]/)){
        password_score +=1;
        console.log("Contains at least one lower-case char! (+1)");

      }

      // display score
      console.log(password_score);

      // display strength based on password_score
      // $('#errormessage').html("Password Score: " + password_score);

      if (password_score === 0){
        $('#pass_status').html("Very Weak");
        $('#bootstrap_bar').attr("class", "textbox progress-bar-danger");
      }
      else if (password_score === 1){
        $('#pass_status').html("Weak");
        $('#bootstrap_bar').attr("class", "textbox progress-bar-danger");
      }
      else if (password_score === 2){
        $('#pass_status').html("OK");
        $('#bootstrap_bar').attr("class", "textbox progress-bar-warning");
      }
      else if (password_score === 3){
        $('#pass_status').html("Good");
        $('#bootstrap_bar').attr("class", "textbox progress-bar-warning");
      }
      else if (password_score === 4){
        $('#pass_status').html("Strong");
        $('#bootstrap_bar').attr("class", "textbox progress-bar-success");
      }
      else if (password_score === 5){
        $('#pass_status').html("Very Strong");
        $('#bootstrap_bar').attr("class", "textbox progress-bar-success");
      }
    });
  



});


