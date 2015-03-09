var ready;

ready = function() {


    $(".button-checkbox").click(function(event) {

        invert_color($(event.target));

    });

    results();

}

function invert_color(object) {
    if (object.is("input")) {
        if (object.parent().css("background-color") == "rgb(51, 51, 51)") {
            object.parent().css('background-color', "");
            return;
        }
        if (object.parent().css("background-color") == "rgb(121, 199, 145)") {
            object.parent().css('background-color', "rgb(51, 51, 51)");
            return;
        }
    }
    if (object.css("background-color") == "rgb(51, 51, 51)") {
        object.children("input").prop('checked', false);
        object.css('background-color', "");
        return;
    }
    if (object.css("background-color") == "rgb(121, 199, 145)") {
        object.css('background-color', "rgb(51, 51, 51)");
        object.children("input").prop('checked', true);

        return;
    }

}

function results() {

    if ($(".panel-exists").size() != 0) {
        console.log("Resultados");
        $('.results').css('display', 'block');
        $('html, body').animate({
            scrollTop: $(".search-result").offset().top
        }, 2000);
    }
}

function scroll_home() {



    $('html, body').animate({
        scrollTop: $(".main-row").offset().top
    }, 2000);

}

$(document).ready(ready);
$(document).on('page:load', ready);
