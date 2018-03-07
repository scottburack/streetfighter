class RemoveDefaultWinsLosses < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :losses, :integer
    change_column :users, :wins, :integer
  end
end
