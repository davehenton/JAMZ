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