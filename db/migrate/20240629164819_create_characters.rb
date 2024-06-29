class CreateCharacters < ActiveRecord::Migration[7.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level
      t.integer :health_points

      t.timestamps
    end
  end
end
