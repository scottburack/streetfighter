class EditGameColumnInBattles < ActiveRecord::Migration[5.1]
  def change
    remove_column :battles, :player_character_id
    remove_column :battles, :enemy_character_id
    add_column :battles, :game_id, :integer
  end
end
