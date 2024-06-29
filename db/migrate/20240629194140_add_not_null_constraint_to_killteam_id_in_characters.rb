class AddNotNullConstraintToKillteamIdInCharacters < ActiveRecord::Migration[7.2]
  def change
    change_column_null :characters, :killteam_id, false
  end
end
