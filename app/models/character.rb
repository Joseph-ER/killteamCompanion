class Character < ApplicationRecord

    def apply_damage(damage_amount)
        self.update(current_wounds: self.current_wounds - damage_amount)
    end

    def take_damage(damage_amount)
        apply_damage(damage_amount)
        self.current_wounds > 0 ? self.update(alive: true) : self.update(alive: false)
        handle_injury(true) if self.current_wounds < self.total_wounds/2
    end

    def handle_injury(new_injury_status)
        self.update!(is_injured: new_injury_status)
    end

    def heal(healed_amount)
        self.update(current_wounds: self.current_wounds + healed_amount)
        handle_injury(false) if self.current_wounds > self.total_wounds/2
    end
end

# == Schema Information
#
# Table name: characters
#
#  id             :integer          not null, primary key
#  alive          :boolean          default(TRUE)
#  current_wounds :integer
#  is_injured     :boolean          default(FALSE), not null
#  name           :string
#  total_wounds   :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
