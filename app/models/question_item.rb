class QuestionItem < ActiveRecord::Base
  attr_accessible :is_required, :position, :question_id, :question_set_id
end
