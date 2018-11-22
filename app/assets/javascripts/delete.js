$(function(){
  $(".delete").on("click", function(){
    if(window.confirm("削除しますがよろしいですか？")){
      location.href = $(this).attr('href');
    } else {
      return false;
    }
  })
});
