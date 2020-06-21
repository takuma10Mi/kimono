window.onload = function(){
  $(document).on('click', '.toggle', function(){
    $('.toggle').toggleClass('active');
    $('.navi').toggleClass('active');
  });


  // footer-btn
  $(document).on('click', '.buttom__btn', function(){
    $('.buttom').toggleClass('hidden');
    $('.buttom__btn').toggleClass('hidden');
  });
};