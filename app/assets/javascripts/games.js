
$(function() {
  var clickCount = 0;
  $('.game_tile').on('click', function() {
    clickCount++;
    console.log(clickCount);
    var data = {    tile_id: $(this).attr('id'),
                 clicked_on: new Date };
    var cell = $(this);
    cell.empty()
        .unbind('click');
    // console.log(data);
    $.post( '/clicks.json', data, function() {
      // console.log('successful post');
      cell.css('background-color', '#D4D8D1');
    }).fail( function() {
        cell.css('background-color', 'red')
        cell.text("Server error!");  
      });
  });
});