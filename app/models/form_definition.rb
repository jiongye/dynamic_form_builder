class FormDefinition < ActiveRecord::Base
  attr_accessible :form_id, :questionable_id, :questionable_type, :is_required, :position
  belongs_to :form
  belongs_to :questionable, :polymorphic => true


end
