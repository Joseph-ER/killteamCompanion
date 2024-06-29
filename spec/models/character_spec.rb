require 'rails_helper'

RSpec.describe Character, type: :model do
when "Creating character"
  character = Character.new(name: "Typhus", alive: true)

  it "has valid name" do
    character = Character.new(name: "Typhus")
    expect(character).to be_valid
  end
end
