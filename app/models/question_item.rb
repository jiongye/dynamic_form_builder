class QuestionItem < ActiveRecord::Base
  attr_accessible :is_required, :position, :question_id, :question_set_id
  belongs_to :question_set
  belongs_to :question
end
