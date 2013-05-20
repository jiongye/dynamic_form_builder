class QuestionsController < ApplicationController

  def options
    @questions = Question.all
    render :layout => false
  end

end