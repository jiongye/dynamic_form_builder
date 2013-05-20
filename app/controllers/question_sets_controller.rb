class QuestionSetsController < ApplicationController

  def options
    @question_sets = QuestionSet.all
    render :layout => false
  end

end