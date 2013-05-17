class CreateChoiceOptions < ActiveRecord::Migration
  def change
    create_table :choice_options do |t|
      t.string :name
      t.integer :position
      t.integer :multiple_choice_id

      t.timestamps
    end
  end
end
