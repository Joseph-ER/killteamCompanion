class CreateKillteams < ActiveRecord::Migration[7.2]
  def change
    create_table :killteams do |t|
      t.string :name

      t.timestamps
    end
  end
end
