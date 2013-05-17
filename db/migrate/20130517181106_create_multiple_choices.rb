class CreateMultipleChoices < ActiveRecord::Migration
  def change
    create_table :multiple_choices do |t|
      t.string :name
      t.boolean :include_blank

      t.timestamps
    end
  end
end
