
$(document).ready(function()
{

resize();
results();
});


$(window).resize = resize();

function resize(){
  $('.search').css('padding', ($( window ).height()/3).toString()+'px');
  $('.search').css('height', ($( window ).height()).toString()+'px');
   $('.results').css('height', ($( window ).height()).toString()+'px');

}

$( window ).resize(function() {
  resize();
});


function results(){
console.log("Resultados");
  if($(".search-result").size() != 0){
  $('.results').css('height', ($( window ).height()).toString()+'px');
     $('html, body').animate({
        scrollTop: $(".results").offset().top
    }, 2000);
    }
}
