$(function(){
    $(document).on('ajax:success', 'a', function(e, data, status, xhr){
    $('.wikis').empty();
    $('.wikis').prepend(xhr.responseText.slice(2055, -251));

    var randomColor = Math.floor(Math.random()*16777215).toString(16);
    $('body').css('background-color', '#' + randomColor)
    })
  })
