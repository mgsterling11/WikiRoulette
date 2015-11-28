
$(function(){
  $('a').on("ajax:success", function(e, data){
     event.preventDefault(e);
    debugger;
    var $self = $(this);
    $("div.links").find("a").remove();
    
  // $.ajax({type: "GET", 
  //     url: $(this).attr("href"), 
  //     data: 
  //     error: function(){ alert("There was a problem, please try again.") }
    // 
  })
}) 

    



  // $('a').click(function(event){ 
  //   event.preventDefault();

  //   debugger;
  //   var link = $(this).('a');
  //   var wiki_link = "https://en.wikipedia.org" + link

  // //   $.ajax({
  // //     method: "GET",
  // //     url: flickerAPI,
  // //     dataType: "JSONP"
       
  // //   })
  // // .done(function( response ) {
  // //       var pictures = response.photos.photo
  // //       pictures.forEach(function(picture){
  // //         var url = "http://farm" + picture.farm + ".staticflickr.com/" + picture.server + "/" + picture.id + "_" + picture.secret + ".jpg"
  // //        $('body').append('<img src="' + url + '"/>')
  // //       })
        
  //     });
  // })  
