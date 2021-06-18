class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.integer :id
      t.text :content
      t.datetime :date
      t.integer :level
      t.boolean :enpathy

      t.timestamps
    end
  end
end
