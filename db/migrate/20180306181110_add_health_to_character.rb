class AddHealthToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :health, :integer, :default => 100
  end
end
