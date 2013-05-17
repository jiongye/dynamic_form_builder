class FormDefinition < ActiveRecord::Base
  attr_accessible :form_id, :form_question_id, :form_question_type, :is_required, :position
end
