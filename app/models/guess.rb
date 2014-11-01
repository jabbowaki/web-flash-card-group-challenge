class Guess < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to  :card
  belongs_to  :round

  def self.used_cards
    Guess.where(round_id: 1)pluck(:card_id)
  end
end
