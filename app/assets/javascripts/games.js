
$(function() {
  var clickCount = 0;
  $('.game_tile').on('click', function() {
    clickCount++;
    if (clickCount == 64) {
      window.location.replace("http://intense-dawn-2133.herokuapp.com");
    } else {
      var data = {    tile_id: $(this).attr('id'),
                   clicked_on: new Date };
      var cell = $(this); 
      cell.empty()
          .unbind('click');
      $.post( '/clicks.json', data, function() {
        cell.css('background-color', '#D4D8D1');
      }).fail( function() {
          cell.css('background-color', 'red')
          cell.text("Server error!");  
        });
    }
  });
});