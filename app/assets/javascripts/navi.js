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

  $(document).on('click', '.checkout__container__content__body__box__right__response', function(){
    $('.checkout__container__content__body__box__right__response__text').toggleClass('hidden');
    $('.checkout__container__content__body__box__right__overview').toggleClass('hidden');
  });
};