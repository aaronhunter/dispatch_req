// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require select2
$(document).ready(function() {
  $('select').select2();

  $('#user_password').keyup(function(){
        $('#strength').html(check_strength($('#user_password').val()))
  })

  function check_strength(password) {
    var strength = 0

    //less than 8, return if true
    if (password.length < 8) {
      $('#strength').removeClass()
      $('#strength').addClass('short')
      return 'Too short'
    }

    //add to strength if meeting standards

    if (password.length > 7) strength += 1

    //upper case?
    if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/))  strength += 1

    //numbers?
    if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/))  strength += 1

    //one special character?
    if (password.match(/([!,%,&,@,#,$,^,*,?,_,~])/))  strength += 1

    //two special characters?
    if (password.match(/(.*[!,%,&,@,#,$,^,*,?,_,~].*[!,",%,&,@,#,$,^,*,?,_,~])/)) strength += 1

    if (strength < 3 ) {
      $('#strength').removeClass()
      $('#strength').addClass('weak')
      return 'Weak'
    } else if (strength == 3 ) {
      $('#strength').removeClass()
      $('#strength').addClass('good')
      return 'Good'
    } else if (strength == 5) {
      $('#strength').removeClass()
      $('#strength').addClass('strong')
      return 'Strong'
    }
  }
});