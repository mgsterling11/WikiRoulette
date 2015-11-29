
$(function(){
  $('a').on('ajax:success', function(e, data, status, xhr) {
    $('.wikis').empty();
    $('.wikis').prepend(xhr.responseText);

    var randomColor = Math.floor(Math.random()*16777215).toString(16);
    $('body').css('background-color', '#' + randomColor)
  })
})