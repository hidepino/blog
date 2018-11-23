$(function () {
  $(document).on('turbolinks:load', function(){
    var $body = $('body');
    $('#js__sideMenuBtn').on('click', function () {
      $body.toggleClass('side-open');
      $('.side-menu').toggleClass('side-menu--close');
    });
  })
});
