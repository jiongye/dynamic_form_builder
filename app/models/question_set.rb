class QuestionSet < ActiveRecord::Base
  attr_accessible :name
  has_many :question_items
  has_many :form_definitions, :as => :questionable

end
