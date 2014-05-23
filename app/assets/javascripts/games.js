
$(function() {
  $('td').on('click', function() {
    var data = { tile_id: $(this).attr('id'),
                  clicked_on: new Date };
    $(this).empty()
           .unbind('click');
    console.log(data);
    $.post( '/clicks', data, function() {
      console.log('successful post')
    }).fail($(this).css('background-color', 'red'));
  });
});