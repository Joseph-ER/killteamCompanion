class MakeKillteamIdNullFalse < ActiveRecord::Migration[7.2]
  def up
    default_killteam = Killteam.create(name: "Default Killteam")

    Character.update_all(killteam_id: default_killteam.id)
  end

  def down
    Character.update_all(killteam_id: nil)
    Killteam.find_by(name: "Default Killteam")&.destroy
  end
end
