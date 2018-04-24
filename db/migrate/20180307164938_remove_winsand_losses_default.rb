class RemoveWinsandLossesDefault < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :wins
    remove_column :users, :losses
    add_column :users, :wins, :integer
    add_column :users, :losses, :integer
  end
end
