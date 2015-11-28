
$(function(){
  
  $('a').on('ajax:success', function(e, data, status, xhr) {
    debugger;
    var $self = $(this);
    $self.text();
    $("div.links").find("a").remove();
    $('div.links').prepend(xhr.responseText);
  })
  
})