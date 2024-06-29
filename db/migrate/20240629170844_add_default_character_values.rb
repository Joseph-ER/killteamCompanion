class AddDefaultCharacterValues < ActiveRecord::Migration[7.2]
  def change
    change_column_default :characters, :alive, from: nil, to: true
    change_column_default :characters, :health, from: nil, to: 7
    rename_column :characters, :health, :wounds
    remove_column :characters,  :health_points
  end
end
