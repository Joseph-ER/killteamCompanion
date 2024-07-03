require 'rails_helper'

RSpec.describe Character, type: :model do
  let(:killteam) { Killteam.create(name: "Palid Hand") }
  let(:character){ Character.new(name: "Typhus", total_wounds: 12, current_wounds: 12, alive: true, is_injured: false, killteam: killteam) }

  context "Creating character" do

    it{expect(character).to be_valid}
    it{expect(character.name).to eq("Typhus")}
    it{expect(character.alive).to be true}
    it{expect(character.is_injured).to be false}
    it{expect(character.total_wounds).to eq(12)}
  end

  context "When taking damage" do

    it "takes damage and is not dead or injured" do
      character.take_damage(2)
      expect(character.current_wounds).to eq(10)
      expect(character.alive).to be true
      expect(character.is_injured).to be false
    end

    it "is wounded at > half health" do
      character.take_damage(7)
      expect(character.current_wounds).to eq(5)
      expect(character.is_injured).to be true
    end

    it "dies at 0 health" do
      character.take_damage(12)
      expect(character.current_wounds).to eq(0)
      expect(character.alive).to be false
    end

    it "can be healed with 4 health" do
      character.take_damage(12)
      expect(character.current_wounds).to eq(0)
    end

    it "can be healed and 'is_injured' becomes false" do
      character.take_damage(10)
      expect(character.current_wounds).to eq(2)
      expect(character.is_injured).to be true
      character.heal(10)
      expect(character.current_wounds).to eq(12)
      expect(character.is_injured).to be false
    end
  end
end
