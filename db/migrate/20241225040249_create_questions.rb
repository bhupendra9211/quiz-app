class CreateQuestions < ActiveRecord::Migration[7.2]
  def change
    create_table :questions do |t|
      t.string :content
      t.integer :correct_option
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
