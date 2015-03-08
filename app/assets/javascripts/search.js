
$(document).ready(function()
{


//resize();


$( ".button-checkbox" ).click(function( event ) {
  $(event.target).css('background-color', "#333");
  $(event.currentTarget).css('background-color', "#333");

});

results();
});


function results(){

  if($(".panel-exists").size() != 0){
    console.log("Resultados");
  $('.results').css('display', 'block');
     $('html, body').animate({
        scrollTop: $(".search-result").offset().top
    }, 2000);
    }
}


