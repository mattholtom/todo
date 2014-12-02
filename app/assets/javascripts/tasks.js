$(document).ready(function() {

  $('#new_task').submit(function(event) {
    event.preventDefault();
    $.ajax({
      url: '/tasks',
      data: $(this).serialize(),
      dataType: 'script',
      type: 'POST'
    });
  });

});
