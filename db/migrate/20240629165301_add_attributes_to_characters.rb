class AddAttributesToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :alive, :boolean
    add_column :characters, :health, :integer
    add_column :characters, :movement, :integer
  end
end
