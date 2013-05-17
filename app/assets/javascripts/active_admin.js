//= require active_admin/base

$(function(){

  $('#question_field_type').change(function(){
    var arr = [ 'select_field', 'multiple_select_field', 'checkbox_field', 'radio_field' ];
    if($.inArray($(this).val(), arr) > -1){
      $('#question_multiple_choice_input').show();
    }else{
      $('#question_multiple_choice_input').hide();
    }
  });


})