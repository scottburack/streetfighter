class AddCharacterColumnsToBattle < ActiveRecord::Migration[5.1]
  def change
    add_column :battles, :player_character_id, :integer
    add_column :battles, :enemy_character_id, :integer
  end
end
