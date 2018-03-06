class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :user_player
      # t.integer :computer_player
      t.string :winner
      t.string :loser

      t.timestamps
    end
  end
end
