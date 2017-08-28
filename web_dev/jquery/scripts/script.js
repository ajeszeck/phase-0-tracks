$(document).ready(function(){
    $("li").click(function(){
      $(this).hide();
    });

    $("#show").click(function(){
      $("li").show();
    });
});

