class AddUserIdToQuestionUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :question_users, :user, null: false, foreign_key: true
  end
end
