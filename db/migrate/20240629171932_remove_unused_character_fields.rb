class RemoveUnusedCharacterFields < ActiveRecord::Migration[7.2]
  def change
    remove_column :characters, :level
    remove_column :characters, :movement
  end
end
