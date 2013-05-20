class FormsController < ApplicationController

  def index
    @forms = Form.all
  end

  def show
    @form = Form.find(params[:id])
  end

  def new
    @form = Form.new
    @form.form_definitions << FormDefinition.new
  end

  def edit
    @form = Form.find(params[:id])
    @form.form_definitions << FormDefinition.new if @form.form_definitions.blank?
  end

  def create
    @form = Form.new(params[:form])

    if @form.save
      redirect_to @form, notice: 'Form type was successfully created.'
    else
      @form.form_definitions << FormDefinition.new if @form.form_definitions.blank?
      render action: "new"
    end
  end

  def update
    @form = Form.find(params[:id])

    if @form.update_attributes(params[:form])
      redirect_to @form, notice: 'Form type was successfully updated.'
    else
      @form.form_definitions << FormDefinition.new if @form.form_definitions.blank?
      render action: "edit"
    end

  end

  def destroy
    @form = Form.find(params[:id])
    @form.destroy

    redirect_to forms_url
  end

end
