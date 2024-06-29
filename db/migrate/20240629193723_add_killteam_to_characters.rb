class AddKillteamToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_reference :characters, :killteam, null: false, foreign_key: true
  end
end
