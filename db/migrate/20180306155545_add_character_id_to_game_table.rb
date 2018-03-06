class AddCharacterIdToGameTable < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :player_character_id, :integer
    add_column :games, :enemy_character_id, :integer
  end
end
