$(function () {
    ////Menu fijo
    //var windowHeigh = $(window).height();   //Medir cuanto mide la pantalla
    //var barraAltura = $('.barra').innerHeight();


    //$(window).scroll(function () {
    //    var scroll = $(window).scrollTop();

    //    if (scroll > windowHeigh) {
    //        $('.barra').addClass('fixed');
    //        $('body').css({ 'margin-top': barraAltura + 'px' });
    //    } else {
    //        $('.barra').removeClass('fixed');
    //        $('body').css({ 'margin-top': '0px' });
    //    }
    //});


    //cuennta regresiva
    $('.cuenta-regresiva').countdown('2020/08/24 23:59:59', function (event) {
        $('#dias').html(event.strftime('%D'));
        $('#horas').html(event.strftime('%H'));
        $('#minutos').html(event.strftime('%M'));
        $('#segundos').html(event.strftime('%S'));
    });




});

//$(function () {
//    //Favorito
//    $('#favorito').on('click', function () { /* Me dice cual estoy seleccionando*/
//        $(this).addClass('fav');
//        return false
//    });
//});

