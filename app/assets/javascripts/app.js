$(initialize)

function initialize() {
  clickEvents();
}
function clickEvents() {
  $('.menu').on("click", function() {
    $('main').addClass("main-opacity");
    showShader();

    $('.shader').on("click", function(){ 
      hideShader()
      $('main').removeClass("main-opacity");
    });
  });
}

function hideShader() {
  $('.shader').addClass("animated fadeOut").one('webkitAnimationEnd', function(){
    $(this).removeClass("animated fadeOut");
    $('.shader').hide();
  });
}

function showShader() {
  $('.shader').show();
  $('.shader').addClass("animated fadeIn").one('webkitAnimationEnd', function(){
    $(this).removeClass("animated fadeIn");
  });
}


