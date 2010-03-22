$(function() {
    $("li")
        .mouseenter(function() {
            $(this).find('ul').show();
        })
        .mouseleave(function() {
            $(this).find('ul').hide();
        });
});

