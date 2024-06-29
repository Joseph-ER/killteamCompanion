require 'rails_helper'

RSpec.describe Killteam, type: :model do
    let(:killteam) { Killteam.create(name: "Palid Hand") }
    context "Creating killteam" do
        it{expect(killteam.name).to eq("Palid Hand")}
    end

    context "Has a related character" do
        let(:character){ Character.create(name: "Typhus", total_wounds: 12, current_wounds: 12, alive: true, is_injured: false, killteam: killteam) }

        it "belongs to a killteam" do
            expect(character.killteam_id).to eq(killteam.id) 
            expect(killteam.characters.count).to eq(1)
        end
    end
end