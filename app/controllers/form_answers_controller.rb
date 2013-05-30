class FormAnswersController < ApplicationController

  def show
    render :text => 'this is the detail of the form answers'
  end

  def new
    @form = Form.find(params[:form_id])
    @form_answer = @form.form_answers.new
  end

  def create
    @form = Form.find(params[:form_id])
    @form_answer = @form.form_answers.new(params[:form_answer])
    if @form_answer.save
      redirect_to form_form_answer_path(@form, @form_answer), notice: 'form answer was successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @form = Form.find(params[:form_id])
    @form_answer = FormAnswer.find(params[:id])
  end

  def update
    @form = Form.find(params[:form_id])
    @form_answer = FormAnswer.find(params[:id])
    if @form_answer.update_attributes(params[:form_answer])
      redirect_to form_form_answer_path(@form, @form_answer), notice: 'form answer was successfully updated.'
    else
      render action: "edit"
    end
  end

end