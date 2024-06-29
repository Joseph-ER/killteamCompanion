class AddCharacterTotalWounds < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :total_wounds, :integer, default: 7
    rename_column :characters, :wounds, :current_wounds
  end
end
