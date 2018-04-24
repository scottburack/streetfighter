class RenameUserColumnInGames < ActiveRecord::Migration[5.1]
  def change
    rename_column :games, :user_player, :user_id
  end
end
