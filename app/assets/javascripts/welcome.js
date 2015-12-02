$(function(){
    $(document).on('ajax:success', 'a', function(e, data, status, xhr){
    $('.instructions').empty();
    $('.wikis').empty();
    debugger;
    $('.wikis').prepend(xhr.responseText.slice(5640,-40));
    var randomColor = Math.floor(Math.random()*16777215).toString(16);
    $('body').css('background-color', '#' + randomColor)
    })
  })
