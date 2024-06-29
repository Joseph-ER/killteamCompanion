class Killteam < ApplicationRecord

    has_many :characters, dependent: :destroy
    
    validates :name, presence: true
end

# == Schema Information
#
# Table name: killteams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
