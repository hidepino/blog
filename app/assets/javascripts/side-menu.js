$(function () {
  $(document).on('turbolinks:load', function(){
    $('#js__sideMenuBtn').on('click', function () {
      $('.container').toggleClass('side-open');
      $('.side-menu').toggleClass('side-menu--close');
    });
  })
});
