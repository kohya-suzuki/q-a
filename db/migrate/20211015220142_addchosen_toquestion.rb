class AddchosenToquestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :choosen, :boolean
  end
end
