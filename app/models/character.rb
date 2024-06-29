class Character < ApplicationRecord
    
end

# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  alive      :boolean          default(TRUE)
#  name       :string
#  wounds     :integer          default(7)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
