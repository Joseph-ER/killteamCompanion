require 'rails_helper'

RSpec.describe Character, type: :model do
  context "Creating character" do
    let(:character){ Character.new(name: "Typhus", alive: true, wounds: 12) }

    it{expect(character).to be_valid}
    it{expect(character.name).to eq("Typhus")}
    it{expect(character.alive).to be true}
    it{expect(character.wounds).to eq(12)}
  end
end
