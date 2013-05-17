class CreateQuestionItems < ActiveRecord::Migration
  def change
    create_table :question_items do |t|
      t.integer :question_set_id
      t.integer :question_id
      t.integer :position
      t.boolean :is_required

      t.timestamps
    end
  end
end
