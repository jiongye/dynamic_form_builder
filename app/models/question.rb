class Question < ActiveRecord::Base
  attr_accessible :field_type, :multiple_choice_id, :name
  belongs_to :multiple_choice
  has_many :question_items
  has_many :form_definitions, :as => :questionable
  has_many :question_sets, :through => :question_items

end
