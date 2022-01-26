class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :answer1
      t.text :answer2
      t.text :answer3

      t.timestamps
    end
  end
end
