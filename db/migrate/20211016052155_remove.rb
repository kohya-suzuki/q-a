class RemovecolumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :remember_created_at, :datetime
  end
end