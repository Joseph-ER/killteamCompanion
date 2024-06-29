class AddCharacterInjuryColumn < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :is_injured, :boolean, default: false, null: false
  end
end
