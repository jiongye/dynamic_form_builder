class Form < ActiveRecord::Base
  attr_accessible :name, :form_definitions_attributes
  has_many :form_definitions
  has_many :form_answers
  accepts_nested_attributes_for :form_definitions, allow_destroy: true

end
