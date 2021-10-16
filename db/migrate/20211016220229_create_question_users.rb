class CreateQuestionUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :question_users do |t|
      t.boolean :resolved
      t.timestamps
    end
  end
end
