class ChoiceOption < ActiveRecord::Base
  attr_accessible :multiple_choice_id, :name, :position
  belongs_to :multiple_choice
end
