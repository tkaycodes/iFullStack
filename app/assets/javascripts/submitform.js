$(document).ready(function(){
var bad_passwords = ['password', '123456', '12345678', 'abc123', 'qwerty', 'monkey', 'letmein', 'dragon', '111111', 'baseball', 'iloveyou', 'trustno1', '1234567', 'sunshine', 'master', '123123', 'welcome', 'shadow', 'ashley', 'football', 'jesus', 'michael', 'ninja', 'mustang', 'password1'];
$('#submit_form').submit(function(event){
  var user_pass = $('#password_field').val();
  // if password is present in array of bad_passwords, dont submit form
  if (bad_passwords.indexOf(user_pass) !== -1){
    event.preventDefault();
    confirm("..Really? Your password is WAY too simple, change it!");
  }
  else{
    // if not, dont prevent form from submitting
    alert("Password OKAY");
  }

  console.log(user_pass);
});
});
