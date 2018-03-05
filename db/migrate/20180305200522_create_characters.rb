class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.integer :speed
      t.integer :strength
      t.string :image_url
      t.timestamps
    end
  end
end
