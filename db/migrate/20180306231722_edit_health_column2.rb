class EditHealthColumn2 < ActiveRecord::Migration[5.1]
  def change
    remove_column :characters, :health
    add_column :characters, :health, :integer
  end
end
