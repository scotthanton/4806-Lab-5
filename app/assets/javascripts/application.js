// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(function() {

    $('#new_blogpost').submit(function (e) {
        e.preventDefault();
	if ($('#blogpost_title').val() !== "") {
	    if ($('#blogpost_contents').val() !== "") {
		this.submit();
		return true;
	    } else {
		$('.error-msg').html('You must enter contents for the blog post.');
		$('.error-msg').fadeIn();
		return false;
	    }

	} else {
	    $('.error-msg').html('You must enter a title for the blog post.');
	    $('.error-msg').fadeIn();
	    return false;
	}
    });


});
