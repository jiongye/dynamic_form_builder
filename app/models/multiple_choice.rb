class MultipleChoice < ActiveRecord::Base
  attr_accessible :name, :include_blank
  has_many :options, :class_name => 'ChoiceOption'
end
