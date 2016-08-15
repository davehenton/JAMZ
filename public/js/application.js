$(document).ready(function(){
$("#show_artist").click(function(event){
alert("The paragraph was clicked.");
  event.preventDefault();
  console.log("it's been clicked")

  var request = $.ajax(
             {url: '/artists',
             type: "GET"});

  request.done(function(response){
  	console.log(response)
    $("#testAJ").append(response);
    });
  });
});