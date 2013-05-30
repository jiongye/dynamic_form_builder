class FormAnswer < ActiveRecord::Base
  attr_accessible :content, :form_id
  belongs_to :form
  serialize :content, Hash

end
