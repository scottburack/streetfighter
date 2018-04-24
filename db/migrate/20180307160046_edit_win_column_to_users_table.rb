class EditWinColumnToUsersTable < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :wins, :integer, :default => 0
    change_column :users, :losses, :integer, :default => 0

  end
end
