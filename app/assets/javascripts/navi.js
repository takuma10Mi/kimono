window.onload = function(){
  $(document).on('click', '.toggle', function(){
    $('.toggle').toggleClass('active');
    $('.navi').toggleClass('active');
  });


  // footer-btn
  $(document).on('click', '.footer__btn', function(){
    $('.footer').toggleClass('hidden');
    $('.footer__btn').toggleClass('hidden');
  });
};