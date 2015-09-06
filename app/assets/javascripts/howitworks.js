$(document).ready(function(){
    // console.log("hi");
    // $("#howitworksdiv").toggle();
    // console.log($('[data-toggle="popover"]'));
    $('[data-toggle="popover"]').popover({title:"Calculating Password Strength", content:'A password is considered strong when:<br><br><ul style="padding-left:5px;"><li>It has more than 8 characters</li><li>It has at least one lower case character</li><li>It has at least one upper case character</li><li>It has at least one non alphanumeric character</li><li>It has more than 12 characters</li></ul><hr>Each of these criteria gives the password <strong>1 point</strong>. Score is then calculated based on points:<br><br> <ul style="margin-left:5px;"><li><strong>0 points:</strong> Very Weak</li><li><strong>1 point:</strong> Weak</li><li><strong>2 points:</strong> OK</li><li><strong>3 points:</strong> Good</li><li><strong>4 points:</strong> Strong</li><li><strong>5 points:</strong> Very Strong</li></ul>', html: true});
    // $('[data-toggle="popover"]').popover({title:"Calculating Password Strength", content: 'data-template'});
});

