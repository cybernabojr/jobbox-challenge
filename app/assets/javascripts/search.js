
$(document).ready(function()
{


//resize();


$( ".button-checkbox" ).click(function( event ) {
  console.log(event);
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

function scroll_home(){



     $('html, body').animate({
        scrollTop: $(".main-row").offset().top
    }, 2000);

}


