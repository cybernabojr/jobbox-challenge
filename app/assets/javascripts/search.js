
$(document).ready(function()
{

resize();
results();
});


$(window).resize = resize();

function resize(){
  $('.search').css('margin-top', ($( window ).height()/3).toString()+'px');

}

$( window ).resize(function() {
  resize();
});


function results(){
console.log("Resultados");
  if($(".search-result").size() != 0){
   $('.search').css('height', '300px');
     $('html, body').animate({
        scrollTop: $(".results").offset().top
    }, 2000);
    }
}
