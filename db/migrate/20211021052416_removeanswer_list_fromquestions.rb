class RemoveanswerListFromquestions < ActiveRecord::Migration[6.1]
  def change
    remove_column :questions, :answer_list, :varchar
  end
end
