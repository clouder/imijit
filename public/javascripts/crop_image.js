$(document).ready(function() {
  geometry = $('#image_geometry').val().split(' ');
  x_pos = Number(geometry[2]);
  y_pos = Number(geometry[3]);
  x_pos2 = Number(geometry[0]) + x_pos;
  y_pos2 = Number(geometry[1]) + y_pos;
  jQuery('#thumber').Jcrop({
    onChange: setOffsetField,
    onSelect: setOffsetField,
    aspectRatio: 1,
    setSelect: [x_pos, y_pos, x_pos2, y_pos2]
  });
});

function setOffsetField(c) {
  geometry = c.w + ' ' + c.h + ' ' + c.x + ' ' + c.y
  $('#image_geometry').val(geometry);
}
