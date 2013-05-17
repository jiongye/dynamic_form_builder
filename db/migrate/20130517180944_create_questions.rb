class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :field_type
      t.integer :multiple_choice_id

      t.timestamps
    end
  end
end
