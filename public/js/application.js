$(document).ready(function() {
  loginButtonForm();
});

var loginButtonForm = function() {
  $("#button").on('click', function(event) {
    event.preventDefault();

    var $form = $(this);

    var ajaxRequest = $.ajax({
      url: $form.attr('href'),
      type: "post"
    });

    ajaxRequest.done(function(response) {
      console.log(response);
    });

    ajaxRequest.fail(function(response) {
      console.log("something went wrong", response);
    });
  });
};
