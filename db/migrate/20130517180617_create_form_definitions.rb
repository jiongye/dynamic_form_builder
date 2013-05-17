class CreateFormDefinitions < ActiveRecord::Migration
  def change
    create_table :form_definitions do |t|
      t.integer :form_id
      t.string :form_question_type
      t.integer :form_question_id
      t.integer :position
      t.boolean :is_required

      t.timestamps
    end
  end
end
