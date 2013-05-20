jQuery ->
  $('#add_question').click ->
    $("#questions").cloneFields()

  $('body').delegate '#questions .question_type', 'change', ->
    $this_question = $(this)

    if $(this).val() == 'Question'
      $.get '/question_options', '', (data) ->
        $this_question.closest('.item').find('.question_id').html(data)

    else if $(this).val() == 'QuestionSet'
      $.get '/question_set_options', (data) ->
        $this_question.closest('.item').find('.question_id').html(data)

    else
      $this_question.closest('.item').find('.question_id').html('')
