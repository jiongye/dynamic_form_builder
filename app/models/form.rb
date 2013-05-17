class Form < ActiveRecord::Base
  attr_accessible :name
  has_many :form_definitions
end
