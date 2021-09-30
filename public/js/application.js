$(document).ready(function(){
$("#show_artist").click(function(event){
  event.preventDefault();
  var request = $.ajax(
             {url: '/artists',
             type: "GET"});
  request.done(function(response){
  	console.log(response)
    $("#testAJ").append(response);
    });
  });
});

adding some stuff here
and there
and over here
and one more
