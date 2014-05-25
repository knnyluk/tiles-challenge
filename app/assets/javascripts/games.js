
$(function() {
  $('.game_tile').on('click', function() {
    var data = {    tile_id: $(this).attr('id'),
                 clicked_on: new Date };
    var cell = $(this);
    cell.empty()
        .unbind('click');
    // console.log(data);
    $.post( '/clicks.json', data, function() {
      console.log('successful post')
    }).fail( function() {
        cell.css('background-color', 'red')
        cell.text("error!");  
      });
  });
});