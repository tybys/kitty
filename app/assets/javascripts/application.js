// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

/*
 $('#shirt_order').submit(function (e) {
    var postData = $(this).serializeArray();
    $.ajax({
        url: 'welcome/index',
        type: 'POST',
        data: postData,
        success: function () {
            $('#order_modal').modal('show');
        }
    });

     e.preventDefault();
 });
 */

$(function () {
   $('.cat').on('click', function (e) {
    var url = $(this).data('href');

    $.ajax({
       url: url,
       type: 'GET',
       success: function (data) {
           $('#selCat').modal('show');
           //$('#selCat').find('.modal-body').html(data);
           //debugger
       }
    });

    e.preventDefault();
   });
});