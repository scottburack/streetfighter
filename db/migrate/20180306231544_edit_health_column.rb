class EditHealthColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :characters, :health, :integer
  end
end
