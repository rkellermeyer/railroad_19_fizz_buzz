$(document).ready(function() {
  function range(start, end)
  {
    var array = new Array();
    for(var i = start; i < end; i++)
    {
      array.push(i);
    }
    return array;
  }

  var numsCollection = [];
  var url = 'http://localhost:3000/fizzer';
  for (var num of range(1,101)) {
    $.ajax({
      method: "GET",
      url: url + '/' + num + '/bubbles.json',
      data: {},
      dataType: "json",
      success: function(e) {
        console.log(e);
        $('.fizzer-numbers').append('<tr>' + '<td>' + e.number + '</td>' + '<td>' + e.fb_value + '</td>' + '</tr>');
      },
      error: function(e) {
        console.log(e);
      }
    });
  }
});