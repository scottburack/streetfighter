class RemoveComputerColumnFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :computer_player
  end
end
