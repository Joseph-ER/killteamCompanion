class RemoveCharacterDefaultTotalWounds < ActiveRecord::Migration[7.2]
  def change
    change_column_default :characters, :total_wounds, from: 7, to: nil
    change_column_default :characters, :current_wounds, from: 7, to: nil
    change_column_null :characters, :total_wounds, false
  end
end
