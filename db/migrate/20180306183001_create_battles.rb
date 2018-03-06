class CreateBattles < ActiveRecord::Migration[5.1]
  def change
    create_table :battles do |t|
      t.integer :player_character_id
      t.integer :enemy_character_id
      t.string :attack

      t.timestamps
    end
  end
end
