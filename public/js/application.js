$(document).ready(function() {
  $('.awesomeness_teller').on('click', function() {
      $('#awesomeness_holder').text($(this).attr('data-heading'));
  });

  $('.skill_teller').on('click',function(){
    $('#skill_holder').text(window.location.pathname.split('/').slice(-1)[0]);
  });  

  $('.meal_teller').on('click',function(){
    $('#meal_holder').text(meals[0])
  });

  $('#change_bg_color').on('click',function(e){
    e.preventDefault();
    $('body').css('background-color',document.cookie.split('=')[1]);
  });
});
