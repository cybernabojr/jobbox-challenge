
$(document).ready(function()
{


//resize();


$( ".button-checkbox" ).click(function( event ) {
  $(event.target).css('background-color', "black");
  $(event.currentTarget).css('background-color', "black");

});

results();
});


function results(){

  if($(".search-result").size() != 0){
    console.log("Resultados");
  $('.results').css('display', 'block');
     $('html, body').animate({
        scrollTop: $(".results").offset().top
    }, 2000);
    }
}


